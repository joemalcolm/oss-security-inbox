X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1169" "Saturday" "21" "October" "2017" "19:19:46" "+0100" "Eddie Chapman" "eddie@ehuk.net" "<4eb93d94-2788-3d38-06e7-53cfe9d43a52@ehuk.net>" "28" "[oss-security] CVE-2017-15670, CVE-2017-15671 glibc: Buffer overflow and memory leak in glob with GLOB_TILDE" nil nil nil "10" "2017102118:19:46" "[oss-security] CVE-2017-15670, CVE-2017-15671 glibc: Buffer overflow and memory leak in glob with GLOB_TILDE" (number mark "U       eddie@ehuk.n Oct 21   28/1169  " thread-indent "\"[oss-security] CVE-2017-15670, CVE-2017-15671 glibc: Buffer overflow and memory leak in glob with GLOB_TILDE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3686 invoked by uid 550); 21 Oct 2017 19:43:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9359 invoked from network); 21 Oct 2017 18:19:58 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 schatzi.steelbluetech.co.uk 99C9D1F623
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1508609986; bh=LAk+SSM9Uh++pY0hCkpAh+k4Inkx5csheNxmFcWa0mA=;
	h=To:From:Subject:Reply-To:Date:From;
	b=GHlS3VexoP8vYtpvFEF6zCNxMY40DK1+nkA7Vb57VrFQmwlRiukOUO7ZvoRwNp1Wx
	 ylILsNr5f12gwLi7tQXieCWBucGNT++tOHZKq7PJKJqZiOhFBCgxKv3OUaBJj5NABS
	 ujOBPaVGsP+dUJh1ZBqATX9n11oyKj49gtdQjr3o=
To: oss-security@lists.openwall.com
From: Eddie Chapman <eddie@ehuk.net>
Message-ID: <4eb93d94-2788-3d38-06e7-53cfe9d43a52@ehuk.net>
Date: Sat, 21 Oct 2017 19:19:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2017-15670, CVE-2017-15671 glibc: Buffer overflow and memory leak
 in glob with GLOB_TILDE

Just a heads up for anyone around over the weekend ...

== CVE-2017-15670 ==
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-15670
"The GNU C Library (aka glibc or libc6) before 2.27 contains an 
off-by-one error leading to a heap-based buffer overflow in the glob 
function in glob.c, related to the processing of home directories using 
the ~ operator followed by a long string."

https://sourceware.org/bugzilla/show_bug.cgi?id=22320

https://bugzilla.redhat.com/show_bug.cgi?id=1504804
"It is possible that an attacker might use this to escalate his 
privileges or execute code."

Upstream patch:
https://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=2d1bd71ec70a31b01d01b734faa66bb1ed28961f


== CVE-2017-15671 ==
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-15671
"The glob function in glob.c in the GNU C Library (aka glibc or libc6) 
before 2.27, when invoked with GLOB_TILDE, could skip freeing allocated 
memory when processing the ~ operator with a long user name, potentially 
leading to a denial of service (memory leak)."

https://sourceware.org/bugzilla/show_bug.cgi?id=22325
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2017-15671
