X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["23388" "Wednesday" "21" "June" "2017" "13:17:55" "+0200" "Solar Designer" "solar@openwall.com" "<20170621111755.GA12401@openwall.com>" "539" "Re: [oss-security] 4 remote vulnerabilities in OpenVPN" "^Cc:" nil nil "6" "2017062111:17:55" "[oss-security] 4 remote vulnerabilities in OpenVPN" (number mark "        solar@openwa Jun 21  539/23388 " thread-indent "\"Re: [oss-security] 4 remote vulnerabilities in OpenVPN\"\n") "<CAO5O-EJqSUT8PcMzEjDF8k8CwxsyHqVSEYbku3HaAhvvKjgCbQ@mail.gmail.com>" ("<CAO5O-EJqSUT8PcMzEjDF8k8CwxsyHqVSEYbku3HaAhvvKjgCbQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28669 invoked by uid 550); 21 Jun 2017 11:18:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28470 invoked from network); 21 Jun 2017 11:18:09 -0000
Message-ID: <20170621111755.GA12401@openwall.com>
References: <CAO5O-EJqSUT8PcMzEjDF8k8CwxsyHqVSEYbku3HaAhvvKjgCbQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline
In-Reply-To: <CAO5O-EJqSUT8PcMzEjDF8k8CwxsyHqVSEYbku3HaAhvvKjgCbQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Wed, 21 Jun 2017 13:17:55 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] 4 remote vulnerabilities in OpenVPN
To: Guido Vranken <guidovranken@gmail.com>

--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 21, 2017 at 12:40:57PM +0200, Guido Vranken wrote:
> An extensive effort to find security vulnerabilities in OpenVPN has
> resulted in 4 vulnerabilities of such severity that they have been
> kept under embargo until today.
> Interestingly, this comes shortly after the results of two source code
> audits were released, which both failed to detect these problems.
> The worst vulnerability of the 4 allows a client the drain the
> server's memory, which, due to a particular technical circumstance,
> may be exploited to achieve remote code execution.
> 
> An extensive write-up can be found here:
> https://guidovranken.wordpress.com/2017/06/21/the-openvpn-post-audit-bug-bonanza/
> . A technical explanation for every vulnerability is provided, and I
> ponder the efficacy of source code audits.

That's very cool, but we have a policy here to include actual
vulnerability detail in the list postings.  Your blog might be gone in
some years, but hopefully some oss-security archives will stay around.

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"At least the most essential part of your message (e.g., vulnerability
detail and/or exploit) should be directly included in the message itself
(and in plain text), rather than only included by reference to an
external resource.  Posting links to relevant external resources as well
is acceptable, but posting only links is not.  Your message should remain
valuable even with all of the external resources gone."

I've attached a text/plain export of your blog post to this message.

Alexander

--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="openvpn-post-audit-bug-bonanza.txt"

The OpenVPN post-audit bug bonanza

   Posted on June 21, 2017 by guidovranken

Summary

   I've discovered 4 important security vulnerabilities in OpenVPN.
   Interestingly, these were not found by the two recently completed audits
   of OpenVPN code. Below you'll find mostly technical information about the
   vulnerabilities and about how  I found them, but also some commentary on
   why commissioning code audits isn't always the best way to find
   vulnerabilities.

   Here you can find the latest version of
   OpenVPN: https://openvpn.net/index.php/open-source/downloads.html

   This was a labor of love. Nobody paid me to do this. If you appreciate
   this effort, please donate BTC to 1D5vYkiLwRptKP1LCnt4V1TPUgk7cxvVtg.

Introduction

   After a hardening of the OpenVPN code (as commissioned by the Dutch
   intelligence service AIVD) and two recent audits 1 2, I thought it was now
   time for some real action ;).

   Most of this issues were found through fuzzing. I hate admitting it, but
   my chops in the arcane art of reviewing code manually, acquired through
   grueling practice, are dwarfed by the fuzzer in one fell swoop; the
   mortal's mind can only retain and comprehend so much information at a
   time, and for programs that perform long cycles of complex, deeply nested
   operations it is simply not feasible to expect a human to perform an
   encompassing and reliable verification.

   End users and companies who want to invest in validating the security of
   an application written in an "unsafe" language like C, such as those who
   crowd-funded the OpenVPN audit, should not request a manual source code
   audit, but rather task the experts with the goal of ensuring intended
   operation and finding vulnerabilities, using that strategy that provides
   the optimal yield for a given funding window.

   Upon first thought you'd assume both endeavors boil down to the same
   thing, but my fuzzing-based strategy is evidently more effective. What's
   more, once a set of fuzzers has been written, these can be integrated into
   a continuous integration environment for permanent protection henceforth,
   whereas a code review only provides a "snapshot" security assessment of a
   particular software version.

   Manual reviews may still be part of the effort, but only there where
   automation (fuzzing) is not adequate. Some examples:

     * verify cryptographic operations
     * other application-level logic, like path traversal (though a fuzzer
       may help if you're clever)
     * determine the extent to which timing discrepancies divulge sensitive
       information
     * determine the extent to which size of (encrypted) transmitted data
       divulges sensitive information (see also). Beyond the sphere of
       cryptanalysis, I think this is an underappreciated way of looking at
       security.
     * applications that contain a lot of pointer comparisons (not a very
       good practice to begin with -- OpenVPN is very clean in this regard,
       by the way) may require manual inspection to see if behavior relies on
       pointer values (example)
     * can memory leaks (which may be considered a vulnerability themselves)
       can lead to more severe vulnerabilities? (eg. will memory corruption
       take place if the system is drained of memory?)
     * can very large inputs (say megabytes, gigabytes, which would be very
       slow to fuzz) cause problems?
     * does the software rely on the behavior of certain library
       versions/flavors? (eg. a libc function that behaves a certain way with
       glibc may behave differently with the BSD libc -- I've tried making a
       case around the use of ctime() in OpenVPN)

   So doing a code audit to find memory vulnerabilities in a C program is a
   little like asking car wash employees to clean your car with a makeup
   brush. A very noble pursuit indeed, and if you manage to complete it, the
   overall results may be even better than automated water blasting, but
   unless you have infinite funds and time, resources are better spent on
   cleaning the exterior with a machine, vacuuming the interior followed by
   an evaluation of the overall cleanliness, and acting where necessary.

Vulnerabilities

  Remote server crashes/double-free/memory leaks in certificate processing

   Reported to the OpenVPN security list on May 13.

   CVE-2017-7521

   There are several issues in the extract_x509_extension() function in
   ssl_verify_openssl.c. This function is called if the user has used the
   `x509-username-field' directive in their configuration.

 GENERAL_NAMES *extensions;
 int nid = OBJ_txt2nid(fieldname);

 extensions = (GENERAL_NAMES *)X509_get_ext_d2i(cert, nid, NULL, NULL);

   The first issue. The `fieldname' variable is the value specified in the
   configuration file after the `x509-username-directive'. Different NID's
   require different storage structures. That is to say, using a
   GENERAL_NAMES structure for every NID will result in spectacular crashes
   for some NIDs.


 ASN1_STRING_to_UTF8((unsigned char **)&buf, name->d.ia5);
 if (strlen(buf) != name->d.ia5->length)
 {
     msg(D_TLS_ERRORS, "ASN1 ERROR: string contained terminating zero");
     OPENSSL_free(buf);
 }
 else
 {
     strncpynt(out, buf, size);
     OPENSSL_free(buf);
     retval = true;
 }

   The second issue. The return value of ASN1_STRING_to_UTF8 is not checked.
   It may return failure, in which case buf retains its value. This code is
   executed in a loop (for every GENERAL_NAME encoded in the certificate). So
   let's consider this scenario:

   First loop: ASN1_STRING_to_UTF8 succeeds, and buf is processed and freed
   in any of the following branches.
   Second loop: ASN1_STRING_to_UTF8 fails, and buf is processed
   (use-after-free) and freed (double-free) in any of the following branches.

   In spite of extensive fuzzing I could not trigger a single
   ASN1_STRING_to_UTF8 failure using OpenSSL 1.0.2l. It may or may not be
   possible with other versions of OpenSSL, LibreSSL, BoringSSL. This would
   NOT indicate a bug in those libraries -- as an API, they are allowed to
   fail for any reason. The actual error is OpenVPN not checking the return
   value.

   But what makes this interesting is that at the end of this function, the
   following attempt is made to free the `extensions' variable.

 sk_GENERAL_NAME_free(extensions);

   This is wrong. The correct way to do this is to call GENERAL_NAMES_free.
   This is because sk_GENERAL_NAME_free frees only the containing structure,
   whereas GENERAL_NAMES_free frees the structure AND its items.

   Hence, there is a remote memory leak here.

   If you look in the OpenSSL source code, one way through which
   ASN1_STRING_to_UTF8 can fail is if it cannot allocate sufficient memory.
   So the fact that an attacker can trigger a double-free IF the server has
   insufficient memory, combined with the fact that the attacker can
   arbitrarily drain the server of memory, makes it plausible that a remote
   double-free can be achieved. But if a double-free is inadequate to achieve
   remote code execution, there are probably other functions, whose behavior
   is wildly different under memory duress, that you can exploit.

   Furthermore, there are two more instances of ASN1_STRING_to_UTF8 in this
   file:

   (in the function extract_x509_field_ssl)

 tmp = ASN1_STRING_to_UTF8(&buf, asn1);
 if (tmp <= 0) {    return FAILURE; }

   (in the function x509_setenv_track)

  if (ASN1_STRING_to_UTF8(&buf, val) > 0)
 {
     do_setenv_x509(es, xt->name, (char *)buf, depth);
     OPENSSL_free(buf);
 }

   (in the function x509_setenv)

 if (ASN1_STRING_to_UTF8(&buf, val) <= 0)
 {
     continue;
 }

   Here, the code assumes that a return value that is negative or zero
   indicates failure, and `buf' is not initialized, and needs not to be
   freed. But in fact, this is ONLY the case if ASN1_STRING_to_UTF8 returns a
   negative value. A return value 0 simply means a string of length 0, but
   memory is nonetheless allocated, so there are memory leaks here as well.

  Remote (including MITM) client crash, data leak

   Reported to the OpenVPN security list on May 19.

   CVE-2017-7520

   This only affects clients who use OpenVPN to connect to an NTLM version 2
   proxy.

   ntlm_phase_3() in ntlm.c:

 if (( *((long *)&buf2[0x14]) & 0x00800000) == 0x00800000)          /* Check for Target Information block */
 {
     tib_len = buf2[0x28];            /* Get Target Information block size */
     if (tib_len > 96)
     {
         tib_len = 96;
     }
     {
         char *tib_ptr = buf2 + buf2[0x2c];           /* Get Target Information block pointer */
         memcpy(&ntlmv2_blob[0x1c], tib_ptr, tib_len);           /* Copy Target Information block into the blob */
     }
 }

   `buf2' is an array of type char (signed), which contains data sent by the
   peer (the proxy).
   `tib_len' is of type int.

   First issue: remote crash. If buf[0x28] contains a value of 0x80 or
   higher, `tib_len' will be negative; both variables are signed, after all.
   This will cause memcpy to crash.

   Second issue: data leak. buf[0x2c] is used as an index to the buf2 array.
   Because `buf2[0x2c]' is a signed value, if it is >= 0x80, it will cause
   tib_ptr to point BEFORE `buf2'.
   Memory at this location is then copied to ntlmv2_blob, which is then sent
   to the peer.
   This constitutes a data leak.

   Because the user's password is also stored on the stack (the variable
   `pwbuf' in this function), this or other sensitive information to the peer
   in cleartext.

   These issues can be triggered by an actor in an active man-in-the-middle
   role.

  Remote (including MITM) client stack buffer corruption

   Reported to the OpenVPN security list on June 6.
   No CVE
   Patch:
   https://github.com/OpenVPN/openvpn/commit/69162924de3600bfe8ae9708a1d6e3f4515ef995

   This is exceedingly unlikely to occur.

   The my_strupr function in ntlm.c is constructed as follows:

 unsigned char *
 my_strupr(unsigned char *str)
 {
     /* converts string to uppercase in place */
     unsigned char *tmp = str;

     do
     {
         *str = toupper(*str);
     } while (*(++str));
     return tmp;
 }

   From this code it is obvious that if a string of length 0 is passed, OOB
   read(s) and possibly write(s) will occur.

   In the case of a string of length 0, the null terminator is toupper()'ed,
   pointer is incremented, byte AFTER null terminator is evaluated, and if
   not null toupper()'ed, until a second NULL byte is seen.

   The function is invoked once:

 my_strupr((unsigned char *)strcpy(userdomain, username));

   Exploitation can only be achieved if:

     * NTLM version 2 is used.
     * The user specified a username ending with a backslash.
     * The (uninitialized) `username' array constists entirely of non-null
       values.
     * The stack layout is such that the `username' array is followed by a
       pointer, or something else that, if toupper()'ed, could cause
       arbitrary code execution.

   This issue can be triggered by an actor in an active man-in-the-middle
   role.

  Remote server crash (forced assertion failure)

   Reported to the OpenVPN security list on May 20.
   CVE-2017-7508

   The OpenVPN server can be crashed by sending crafted data.

   mss_fixup_ipv6() in mss.c:

 if (buf_advance( &newbuf, 40 ) )
 {
     struct openvpn_tcphdr *tc = (struct openvpn_tcphdr *) BPTR(&newbuf);
     if (tc->flags & OPENVPN_TCPH_SYN_MASK)
     {
         mss_fixup_dowork(&newbuf, (uint16_t) maxmss-20);
     }
 }

   in mss_fixup_dowork():

 ASSERT(BLEN(buf) >= (int) sizeof(struct openvpn_tcphdr));

   It is possible to construct a packet to the server such that this
   assertion will fail, and the server will stop.

  Crash mbed TLS/PolarSSL-based server

   Reported to the OpenVPN security list on May 22.

   CVE-2017-7522

   This requires that the -x509-track configuration option has been set. It
   affects OpenVPN 2.4 (not 2.3) compiled with mbed TLS/PolarSSL as the
   cryptography backend. The crafted certificate must have been signed by the
   CA.

   When parsing the client certificate, asn1_buf_to_c_string() may be called
   (via x509_setenv_track -> do_setenv_name).
   It iterates over an ASN1 string as follows:

 for (i = 0; i < orig->len; ++i)
 {
     if (orig->p[i] == '\0')
     {
         return "ERROR: embedded null value";
     }
 }

   If a null byte is found within this string (ASN1 allows this), the static
   string "ERROR: embedded null value" is returned. If no null byte is found,
   a heap-allocated string is returned.

   The static string becomes problematic if a while later string_mod() is
   called. This attempts to modify the string. This will typically cause a
   crash, because the static string is stored in a read-only memory region.

  Stack buffer overflow if long -tls-cipher is given

   Reported to the OpenVPN security list on May 12
   No CVE
   Patch: https://github.com/OpenVPN/openvpn/commit/e6bf7e033d063535a4414a4cf49c8f367ecdbb4f

   An excessively long -tls-cipher option can cause stack buffer corruption.
   This can only affect the user if they load untrusted options. Not
   considered an actual vulnerability because untrusted options may execute
   arbitrary code via other option directives by design (see commit message).

   As a general rule, don't load untrusted configuration files.

  (v)s(n)printf hardening

   Reported to the OpenVPN security list on May 23

   This is not a vulnerability. It is a proposed hardening technique. My
   motivation can be read here:
   https://community.openvpn.net/openvpn/ticket/894
   The gist is that vsnprintf and related functions (upon which OpenVPN
   heavily relies) can, in theory, fail. The reasons for this are entirely
   inherent to the libc's internal logic, and behavior may differ from one
   libc to the other. It must be noted that it is exceedingly unlikely that
   these functions fail in practice. However, should this happen, this could
   create dangerous data leaks of sensitive data. My proposed patch remedies
   this and ensures no data is ever leaked.

  Other bugs

   Some other minor bugs, that don't impact security, have been found:
   https://github.com/OpenVPN/openvpn/commits/master

How I fuzzed OpenVPN

   Fuzzing OpenVPN has been an extensive effort. You can't just chain the
   fuzzer to arbitary internal functions for various reasons:

     * OpenVPN executes external programs like ipconfig and route to modify
       the system's networking state. This is not acceptable within a fuzzing
       environment.
     * Direct resource access (files, networking) occurs throughout the code.
       You certainly don't want the fuzzer to end up writing random files and
       sending data to random IP's.
     * There are many ASSERT() statements throughout the code. These will
       cause a direct abort if the enclosed condition is false. This makes
       fuzzing impossible; you want the fuzzer to run for hours, not abort
       after 2 seconds.

   To work around the first problem, I modified the source code such that in
   fuzzing mode, everything leading up to the actual execve() is executed
   (processing of arguments to the external program), but the actual execve()
   call is commented out. It will return success or failure based on a bit in
   the fuzzer input data.

   To prevent access to resources, I implemented abstractions for libc
   functions. For example, recv() is now platform_recv(), and within
   platform_recv() I either call recv() directly (in non-fuzzing mode), or
   grab data from the fuzzer input data (in fuzzing mode). Similarly, through
   abstractions such as platform_read(), the application can open, read and
   write to files at will. The data that it expects is transparently pulled
   from the fuzzing input.

   To deal with the assertions, there is no other way than to comment them
   out (#ifndef FUZZING .. ASSERT(condition) .. #else if (condition) return;
   #endif), but only in certain cases.

   I leave them in place in situations where the assertion condition depends
   directly on untrusted data. As an example, say the application recv()'s
   data from the peer, and then does ASSERT(recvd_data[3] == 0x20). It is
   important to leave this ASSERT in; it implies that the client can force an
   abort() on the server (or vice-versa); this can be considered a security
   issue.

   But there are also ASSERTs that rely on variables within an internal data
   structure. I typically fill these data structures with fuzzer input.
   Rather than manually ensuring that these variables are valid and coherent
   with regard to the application's logic, I simply change the ASSERTs that
   rely on this validity into `return' where possible (and free objects,
   where applicable).

   I've used libFuzzer combined with AddressSanitizer (ASAN),
   UndefinedBehaviorSanitizer (UBSAN) and MemorySanitizer (MSAN). ASAN cannot
   be combined with MSAN, and moreover MSAN does not work with libFuzzer (due
   to the apparent use of uninitialized memory within libFuzzer itself). So
   the way to go is to generate a corpus with the fuzzer, and then execute
   each of the resulting inputs with a MSAN-enabled standalone version.

   There are various discrete components in OpenVPN that together constitute
   the application. There is an extensive suite of functions to deal with
   data buffers (buffer.c, buffer.h), an extensive option parser (options.c
   -- parses the configuration file, command line arguments as well as
   commands pushed by server to client), a base64 encoder/decoder, etc.
   Thanks to this relative modularity in OpenVPN it has been possible to use
   and abuse these components as if they were an API with relatively little
   effort.
   My approach for testing all of these API-like components is as follows:

   (assume 3 functions to be tested)

     * Get a number from the fuzzer input data in the range 0 - 2.
     * Call either of the three functions based in the number
     * Provide each function with parameters derived from the input data
       where dynamic parameters are required
     * Repeat the above process a number of times (for example (for i = 0; i
       < 5; i++) { ... })

   This will cause an ever-permutating sequence of invocations. Essentially
   the coverage surface becomes (near-) absolute, that is to say, (almost)
   every conceivable way to use the API is a contender to be tested via this
   algorithm.

   This approach is especially useful to test the functions that operate on
   the same structure. If there exists any sequenced set of functions that
   would cause memory violations, this setup is bound to find it. Of course,
   the actual use of any group of functions within the application is only a
   small subset of all permutations and parameters that the fuzzer sets out
   to test, and any mishaps the fuzzer finds for very particular
   circumstances may not actually occur within the code. But it is
   nonetheless good to know, because:

     * If you know that a certain sequence of calls and their parameters will
       lead to memory corruption, you can now perform a manual code analysis
       to see if this situation occurs.
     * Corner-case API bugs that are not invoked now, may become manifest in
       the future once code (with calls to the API) is added that does
       trigger these bugs.

   In MSAN-enabled builds I serialize the output structure (if there is one)
   to /dev/null. For example, the options parser stores all its data in a
   struct options variable. MSAN does not immediately report the use of
   uninitialized data; it only does so if it is used in conditions that lead
   to branching (if (x) ...) or when the data is used for I/O.

   Hence, by serializing this data to /dev/null (normally a no-op), I force
   MSAN to detect uninitialized data. In C, there is no automatic way to
   serialize nested data structures (struct A contains a pointer to struct B
   etc), so for some structures I had to manually make a serialization stack
   of functions.

   Limited fuzzing on a 32 bit platform has also been performed. This did not
   find any issues that do not occur on 64 bit.

References

   Visible links
   . https://guidovranken.wordpress.com/2017/06/21/the-openvpn-post-audit-bug-bonanza/
   . https://openvpn.net/index.php/open-source/downloads.html
   . https://openvpn.fox-it.com/
   . https://www.aivd.nl/publicaties/publicaties/2013/05/07/inzetadvies-openvpn-nl
   . https://ostif.org/the-openvpn-2-4-0-audit-by-ostif-and-quarkslab-results/
   . https://www.privateinternetaccess.com/blog/2017/05/openvpn-2-4-2-fixes-critical-issues-discovered-openvpn-audit-reports/
   . https://guidovranken.wordpress.com/2017/01/28/can-you-spot-the-vulnerability/
   . https://www.owasp.org/index.php/Path_Traversal
   . https://guidovranken.wordpress.com/2015/12/30/https-bicycle-attack/
   . https://pastebin.com/6tbLsSAz
   . https://community.openvpn.net/openvpn/ticket/893
   . https://www.google.com/search?q=makeup+brush&source=lnms&tbm=isch
   . https://github.com/OpenVPN/openvpn/commit/69162924de3600bfe8ae9708a1d6e3f4515ef995
   . https://github.com/OpenVPN/openvpn/commit/e6bf7e033d063535a4414a4cf49c8f367ecdbb4f
   . https://community.openvpn.net/openvpn/ticket/894
   . https://github.com/OpenVPN/openvpn/commits/master
   . http://llvm.org/docs/LibFuzzer.html

--45Z9DzgjV8m4Oswq--
