X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/8
Message-ID: <trinity-e15c9bf2-bb19-4514-a456-ced9f87b3f7a-1793362509998@trinity-msg-rest-gmx-gmx-live-5bfddcf4fc-sr4wl>
Date: Fri, 30 Oct 2026 12:15:10 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-70102: dhcpcd: NULL Pointer Dereference in Configuration Option Parsing
Content-Type: text/plain; charset=utf-8

 Product:   dhcpcd
Affected:  10.3.0 as identified in the CVE description; reproduced at commit
           2de751b3691642151a4fdc49e444d6b4dc364e98
CWE:       CWE-476 (NULL Pointer Dereference)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  While processing crafted configuration input, parse_option() in
  src/if-options.c accesses members of a NULL struct dhcp_opt pointer.
  The affected branch tests ldop, a pointer to the option pointer, rather
  than *ldop. Consequently, the branch can be entered when *ldop is NULL,
  and the code accesses (*ldop)->embopts and (*ldop)->embopts_len at
  lines 1886 and 1887 of the tested revision.

Impact and attack conditions:
  The observed result is undefined behavior and termination of the
  instrumented configuration-parser fuzzing process, providing a
  denial-of-service condition in that test environment.

  Triggering the demonstrated path requires supplying crafted input to
  the configuration reader, for example by influencing the configuration
  file that is parsed. The available reproduction does not establish
  reachability through incoming DHCP packets, a crash in an uninstrumented
  production daemon, or arbitrary code execution.

Reproduction details:
  The supplied PoC was processed by a configuration-reader fuzzing harness
  using Clang 19.1.7 on x86_64 Kali Linux, kernel 6.12.25-1kali1.
  Build flags: -g -O1 -fno-omit-frame-pointer -fsanitize=address,undefined

  UBSan diagnostic (source paths shortened):
    src/if-options.c:1886:21: runtime error: member access within null
    pointer of type 'struct dhcp_opt'
      #0 parse_option              src/if-options.c:1886:21
      #1 read_config               src/if-options.c:2940:3
      #2 LLVMFuzzerTestOneInput     fuzz_dhcpcd_conf_read.c:35:30

Fix:
  https://github.com/NetworkConfiguration/dhcpcd/commit/117742d755b591764036dd4218f314f748a3d2b7
  
References:
  https://www.cve.org/CVERecord?id=CVE-2025-70102
  https://github.com/NetworkConfiguration/dhcpcd/issues/567
  https://github.com/sigdevel/pocs/blob/main/res/dhcpcd/1/if-options_c_1886/if-options_c_1886
  https://github.com/NetworkConfiguration/dhcpcd/commit/117742d755b591764036dd4218f314f748a3d2b7

——
Best regards, Alexander A. Shvedov
@sigdevel
