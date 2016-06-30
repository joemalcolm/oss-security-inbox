X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1451" "Thursday" "30" "June" "2016" "11:48:55" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160630154855.660056C0B4F@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd" nil nil nil "6" "2016063015:48:55" "[oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd" (number mark "U       cve-assign@m Jun 30   37/1451  " thread-indent "\"[oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd\"\n") "<CACn5sdT2ie2cp7VShA-VqafyiMn-oDsv_0dGtXP-Xcf82LWihA@mail.gmail.com>" ("<CACn5sdT2ie2cp7VShA-VqafyiMn-oDsv_0dGtXP-Xcf82LWihA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28558 invoked by uid 550); 30 Jun 2016 15:49:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28533 invoked from network); 30 Jun 2016 15:49:08 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdT2ie2cp7VShA-VqafyiMn-oDsv_0dGtXP-Xcf82LWihA@mail.gmail.com>
Message-Id: <20160630154855.660056C0B4F@smtpvmsrv1.mitre.org>
Date: Thu, 30 Jun 2016 11:48:55 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A read out-of-bands was found in the parsing of TGA files using the
> last revision of libgd (a6a0e7f) but older versions can be affected. A
> reproducer and some technical details are available here:
> 
> https://github.com/libgd/libgd/issues/247

>> AddressSanitizer: heap-buffer-overflow ...
>> READ of size 4
>> ... in gdImageCreateFromTgaCtx

Use CVE-2016-6132 for this buffer over-read issue.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXdT8ZAAoJEHb/MwWLVhi2SjkQAIges7jISzaEMV4SPSu9Di8B
4re9gzln2m8wIKQ3c9NLFGp5lR8fWCx73vSguwBUWVPBFCJZntup5rZlX/rq9P3+
fFmMhM8g+lsDczm5bNhqUp3lQbSGzts/gPMUbEWlKYKX4sNRdwzlIoxiHq2NxwcB
ue/Ci1nNDkL2ykvfJA8z3twOm9kFu/qMY+CG6oZ5wA6HSRiRb7kxYCmUd1HMlDKb
JOhjyJ+qMKwAaQbQKMERSOz03tvzCzCgZvmUOjtd0lsk7a/E1Q3wwPWJ8+wyBbdw
DZalq2JBQyFNkQ/sy9NGWpya1OSLiuly7xwH+qOGuFmxlXpB87UWq1Mkq6+Hfib5
0pq4cKvdM3gBe1k1lXMAVxikTamvnLizMmRz+tcwHFoGCQoSTwuIegBst3vx9yIJ
7QEiq1ergZTJEpMoG6EtxBSsOejSfhWmRYkcGkaCusYrDdT2WXFly7zWAQtnL5qT
7X5QcpuYs/in7C0rY3UoJqOsDX7cO8b21g16Ya3pGyFjX5DIUr/ZPqSF2GcB6jXn
/rPyeSvv1py40HWsvx8ZUQND9rgGn2g5CPIfEkYapp6IAYtJgA96jIORfuui4lEp
+PAKIvn5LVsdAMcoq50RdOpCqD9VRjA1B6EgtZsjUs1bDsdB7qujm+wBIsu9vkGo
qhxbyEP0bA9VFaM6jxMO
=BZV9
-----END PGP SIGNATURE-----
