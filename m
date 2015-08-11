X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1085" "Tuesday" "11" "August" "2015" "10:47:46" "-0400" "Siddharth Sharma" "siddharth@redhat.com" "<971116748.5268998.1439304466167.JavaMail.zimbra@redhat.com>" "39" "Re: [oss-security] Duplicate Wireshark CVEs?" nil nil nil "8" "2015081114:47:46" "[oss-security] Duplicate Wireshark CVEs?" (number mark "        siddharth@re Aug 11   39/1085  " thread-indent "\"Re: [oss-security] Duplicate Wireshark CVEs?\"\n") "<87bnef1kxg.fsf@redhat.com>" ("<87bnef1kxg.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1393 invoked by uid 550); 11 Aug 2015 14:47:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1372 invoked from network); 11 Aug 2015 14:47:58 -0000
Message-ID: <971116748.5268998.1439304466167.JavaMail.zimbra@redhat.com>
In-Reply-To: <87bnef1kxg.fsf@redhat.com>
References: <87bnef1kxg.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.36.5.155]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF39 (Linux)/8.0.6_GA_5922)
Thread-Topic: Duplicate Wireshark CVEs?
Thread-Index: l8d4O/31RK4iOwz9fUp6ZcyqUpBwcw==
Date: Tue, 11 Aug 2015 10:47:46 -0400 (EDT)
From: Siddharth Sharma <siddharth@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Duplicate Wireshark CVEs?
To: oss-security@lists.openwall.com

Hi,

Any information available on why both Wireshark CVEs
CVE-2015-3811 CVE-2015-2188 point to one fix ?

Thanks
-----------------------------------------------------------------
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A=20
Fingerprint :  0x6F04C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A=20


----- Original Message -----
From: "Martin Prpic" <mprpic@redhat.com>
To: oss-security@lists.openwall.com
Sent: Monday, August 10, 2015 4:15:31 PM
Subject: [oss-security] Duplicate Wireshark CVEs?

Hello,

It looks like the following two Wireshark advisories fix the same flaw:

https://www.wireshark.org/security/wnpa-sec-2015-14.html
https://www.wireshark.org/security/wnpa-sec-2015-07.html

Both fix a flaw in the WCP dissector and refer to the following bug:

https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D10844

Is there a reason two CVEs were assigned for this, or should one of them
be rejected?

Thanks!

RH bugs:
https://bugzilla.redhat.com/CVE-2015-2188
https://bugzilla.redhat.com/CVE-2015-3811

--=20
Martin Prpi=C4=8D / Red Hat Product Security
