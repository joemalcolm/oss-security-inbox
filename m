X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1163" "Tuesday" "7" "June" "2016" "11:27:00" "+0200" "Adam Maris" "amaris@redhat.com" "<99de9e1d-0488-31f2-5045-9d1bd11be781@redhat.com>" "38" "Re: [oss-security] CVE Request: GnuTLS: GNUTLS-SA-2016-1: File overwrite by setuid programs" nil nil nil "6" "2016060709:27:00" "[oss-security] CVE Request: GnuTLS: GNUTLS-SA-2016-1: File overwrite by setuid programs" (number mark "U       amaris@redha Jun  7   38/1163  " thread-indent "\"Re: [oss-security] CVE Request: GnuTLS: GNUTLS-SA-2016-1: File overwrite by setuid programs\"\n") "<20160607064527.GA20067@lorien.valinor.li>" ("<20160607064527.GA20067@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18034 invoked by uid 550); 7 Jun 2016 09:27:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18005 invoked from network); 7 Jun 2016 09:27:14 -0000
To: oss-security@lists.openwall.com
References: <20160607064527.GA20067@lorien.valinor.li>
From: Adam Maris <amaris@redhat.com>
Message-ID: <99de9e1d-0488-31f2-5045-9d1bd11be781@redhat.com>
Date: Tue, 7 Jun 2016 11:27:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160607064527.GA20067@lorien.valinor.li>
Content-Type: multipart/alternative;
 boundary="------------0075BE8D3CBBA45CB5DE4B13"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Tue, 07 Jun 2016 09:27:03 +0000 (UTC)
Subject: Re: [oss-security] CVE Request: GnuTLS: GNUTLS-SA-2016-1: File
 overwrite by setuid programs

--------------0075BE8D3CBBA45CB5DE4B13
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 07/06/16 08:45, Salvatore Bonaccorso wrote:
> Hi
>
> GnuTLS 3.4.13 was released addressing GNUTLS-SA-2016-1,
> http://gnutls.org/security.html#GNUTLS-SA-2016-1 :
>
>> Setuid programs using GnuTLS 3.4.12 could potentially allow an
>> attacker to overwrite and corrupt arbitrary files in the filesystem.
>> This issue was introduced in GnuTLS 3.4.12 and fixed in GnuTLS 3.4.13.
>> Recommendation: Upgrade to GnuTLS 3.4.13, or later versions.
> The relevant upstream commits seem to be:
>
> https://gitlab.com/gnutls/gnutls/compare/fb2a6baef79f4aadfd95e657fe5a18da=
20a1410e...86076c9b17b9a32b348cafb8b724f57f7da64d58
>
> Can you assign a CVE for this issue?
>
> Regards,
> Salvatore

We already assigned CVE-2016-4456 for using insecure getenv() on
GNUTLS_KEYLOGFILE when we got a report for this issue. Not sure why it's
not included in the advisory. I'm dealing with that now.

Regards,

--=20
Adam Mari=9A, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2


--------------0075BE8D3CBBA45CB5DE4B13--
