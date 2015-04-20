X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3734" "Monday" "20" "April" "2015" "12:30:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150420163026.CEFA96C0043@smtpvmsrv1.mitre.org>" "96" "[oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host" nil nil nil "4" "2015042016:30:26" "[oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host" (number mark "        cve-assign@m Apr 20   96/3734  " thread-indent "\"[oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host\"\n") "<alpine.LFD.2.11.1503241045380.5202@wniryva>" ("<alpine.LFD.2.11.1503241045380.5202@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12194 invoked by uid 550); 20 Apr 2015 16:30:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12176 invoked from network); 20 Apr 2015 16:30:38 -0000
In-Reply-To: <alpine.LFD.2.11.1503241045380.5202@wniryva>
Message-Id: <20150420163026.CEFA96C0043@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 20 Apr 2015 12:30:26 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Due to inconsistent error checking, Qemu emulator allows malicious PRDT data
> to flow from a guest to the host's IDE or AHCI controllers. This could result
> in infinite loop or memory leakage on the host leading to unbounded resource
> consumption.
> 
> A privileged user inside guest could use this flaw to crash the system,
> resulting in DoS.
> 
> Upstream fix:
> -------------
>    -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=3251bdcf1c67427d964517053c3d185b46e618e8

We've been unable to determine the scope of this CVE request and what
the correct number of CVE IDs should be. The concept of "inconsistent
error checking" is not one that always results in only one CVE ID.

3251bdcf1c67427d964517053c3d185b46e618e8 appears to make at least two
types of changes. The first type of change is described in the commit
message as:

  we confuse the difference between a PRDT having
  "0 bytes" and a PRDT having "0 complete sectors."

and this apparently corresponds to code changes that include use of
"return s->io_buffer_size" where "return s->io_buffer_size != 0" had
previously been used.

Although BMDMA support was present in QEMU before AHCI support was
present (suggesting possible different affected versions), the use of
"return s->io_buffer_size != 0" existed for both BMDMA and AHCI in
QEMU 1.0, and apparently for neither in 0.9.x. So, we don't think we
should have two CVE IDs based on affected versions. Also, the commit
message lists two different types of impacts:

  BMDMA: "leaked memory for short PRDTs"
  AHCI: "infinite loops and resource usage"

but that isn't, by itself, sufficient to assign two CVE IDs.

The second type of change is the new size checks, i.e.,

  BMDMA:
  if (s->sg.size > INT32_MAX) {
      error_report("IDE: sglist describes more than 2GiB.\n");
  
  AHCI:
  if (sglist->size > INT32_MAX) {
      error_report("AHCI Physical Region Descriptor Table describes "
                   "more than 2 GiB.\n");

Your message was about "could use this flaw to crash the system,"
which isn't precisely the same as either impact stated in the commit
message. If you can clarify what the vulnerability or vulnerabilities
are, that would be helpful. First, we think you mean that there is a
security impact (not necessarily the same security impact) in both the
BMDMA case and the AHCI case: is that correct?

Second, would either of these CVE mappings be useful:

Possibility 1:

  1A: one CVE ID for the use of "return s->io_buffer_size != 0" - this
      made it impossible for other parts of the code to distinguish
      between the "0 bytes" case and the "0 complete sectors" case,
      and caused both impacts: "leaked memory for short PRDTs" and
      "infinite loops and resource usage"

  1B: one CVE ID for lack of the 2 GiB limit checking

Possibility 2:

  One CVE ID only for item 1A above. 1B has no security impact (e.g.,
  because it only allows the guest to conduct a DoS attack against
  itself with a large transfer attempt, or for some other reason)

?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVNSlFAAoJEKllVAevmvmsiVAH/3yf08Dw033fypzAeSSu8FA/
T37C1pNBJJXHccUq3Lf5R31lw6si3CKZCJBEwQzm3Ts3+h+i+nrIh9vO8nhMoBm9
1t1fkc2YN8y+whOWhXz/K0a24nF4HQSfS9cCIImqGvLc7xDogjkedmph1mNN88z6
Q8kK/03vhTj4D3Nm36GG5xAHiLi28Op+Jlge0ZzQnXEZ2CuIJOx1ORdkb69fctAX
U1S38+I7PSw2+PBt6iO4wLaMCnFieEBD2C2x7pOCtwh53PjPmNmjgWF+VyXpUWpz
EgK3WsVJwW6amoSnFGM+DVgRqTMbUaHZUUDAU+72DVBfclU5BVTH6hmHLaNw7NI=
=2KOa
-----END PGP SIGNATURE-----
