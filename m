X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["592" "Sunday" "22" "March" "2015" "12:04:57" "+0100" "Florian Weimer" "fw@deneb.enyo.de" "<877fu9cmxy.fsf@mid.deneb.enyo.de>" "20" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032211:04:57" "[oss-security] CVE for Kali Linux" (number mark "        fw@deneb.eny Mar 22   20/592   " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550E289C.1060602@redhat.com>" ("<550E21FA.6090704@redhat.com>" "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>" "<550E289C.1060602@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23728 invoked by uid 550); 22 Mar 2015 11:05:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23710 invoked from network); 22 Mar 2015 11:05:09 -0000
References: <550E21FA.6090704@redhat.com>
	<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>
	<550E289C.1060602@redhat.com>
In-Reply-To: <550E289C.1060602@redhat.com> (Kurt Seifried's message of "Sat,
	21 Mar 2015 20:27:40 -0600")
Message-ID: <877fu9cmxy.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Date: Sun, 22 Mar 2015 12:04:57 +0100
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

* Kurt Seifried:

> So I guess we enter uncharted territory here.

No, this is pretty much the same as bug 998:

  <https://bugzilla.redhat.com/show_bug.cgi?id=998>

Here's one non-working attempt at solving this with the Microsoft
trust root:

  <https://fedoraproject.org/wiki/Features/PackageSignatureCheckingDuringOSInstall>

(It does not work because anyone can have binaries signed under the
Microsoft trust root.)

> Vendor has front page that recommends doing something completely
> insane and insecure (http/md5s/etc.).

Please tone down your language, it's not constructive at all.
