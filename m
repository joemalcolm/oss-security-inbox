X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["660" "Thursday" "23" "August" "2018" "08:12:52" "+0200" "Florian Weimer" "fweimer@redhat.com" "<f1f21888-b738-306f-a064-9c3fc6cc764b@redhat.com>" "15" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082306:12:52" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        fweimer@redh Aug 23   15/660   " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CAJ_zFkL5Tus9-4PJOTPGNwg0BVCd+NkgC9B_HM9ev+UTAS=59Q@mail.gmail.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<CAJ_zFkJ-qq_SRuiif-mUZmURpTgHrmwx0cp_gM3ms_-TwNVODQ@mail.gmail.com>" "<CAJ_zFkL5Tus9-4PJOTPGNwg0BVCd+NkgC9B_HM9ev+UTAS=59Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17670 invoked by uid 550); 23 Aug 2018 06:13:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17611 invoked from network); 23 Aug 2018 06:13:05 -0000
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
 <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
 <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
 <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>
 <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>
 <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>
 <CAJ_zFkJ-qq_SRuiif-mUZmURpTgHrmwx0cp_gM3ms_-TwNVODQ@mail.gmail.com>
 <CAJ_zFkL5Tus9-4PJOTPGNwg0BVCd+NkgC9B_HM9ev+UTAS=59Q@mail.gmail.com>
Message-ID: <f1f21888-b738-306f-a064-9c3fc6cc764b@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkL5Tus9-4PJOTPGNwg0BVCd+NkgC9B_HM9ev+UTAS=59Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.2]); Thu, 23 Aug 2018 06:12:53 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.2]); Thu, 23 Aug 2018 06:12:53 +0000 (UTC) for IP:'10.11.54.4' DOMAIN:'int-mx04.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'fweimer@redhat.com' RCPT:''
Date: Thu, 23 Aug 2018 08:12:52 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com, Tavis Ormandy <taviso@google.com>

On 08/23/2018 06:24 AM, Tavis Ormandy wrote:
> I think we should kill (or at least trim the mime types)
> in /usr/share/thumbnailers/evince.thumbnailer.

Note that this may or may not work, depending on whether the MIME type 
detection is identical between the selection of the evince and the 
selection of the Ghostscript backend in evince itself.

I remember a case from several years ago where an ImageMagick bug was 
still exploitable via mail user agents even though the problematic image 
format was not listed in /etc/mailcap.  ImageMagick did its own format 
detection back then, so all you had to do was to change the file extension.

Thanks,
Florian
