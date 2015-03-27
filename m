X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3820" "Friday" "27" "March" "2015" "21:06:20" "+0100" "Pierre Schweitzer" "pierre@reactos.org" "<5515B83C.6080506@reactos.org>" "87" "[oss-security] Re: CVE request: denial of service in Quassel" nil nil nil "3" "2015032720:06:20" "[oss-security] Re: CVE request: denial of service in Quassel" (number mark "        pierre@react Mar 27   87/3820  " thread-indent "\"[oss-security] Re: CVE request: denial of service in Quassel\"\n") "<20150327181641.0B66134E00D@smtpvbsrv1.mitre.org>" ("<20150327181641.0B66134E00D@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8108 invoked by uid 550); 27 Mar 2015 20:06:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8089 invoked from network); 27 Mar 2015 20:06:33 -0000
Message-ID: <5515B83C.6080506@reactos.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <20150327181641.0B66134E00D@smtpvbsrv1.mitre.org>
In-Reply-To: <20150327181641.0B66134E00D@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
CC: oss-security@lists.openwall.com
Date: Fri, 27 Mar 2015 21:06:20 +0100
From: Pierre Schweitzer <pierre@reactos.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: denial of service in Quassel
To: cve-assign@mitre.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Thanks for your detailed answer, please find my answers inlined.

On 27/03/2015 19:16, cve-assign@mitre.org wrote:
> 2
>> Unlike what it replaces, the new splitting code is not recursive 
>> and cannot cause stack overflows.
> 
> If an attacker sends a crafted message and this leads to excessive 
> stack consumption in an IRC client, making the client crash or
> hang, then that is relevant for a CVE. (We are expecting that it is
> a "normal" IRC client that supports independent sessions with
> messages from different channels or different persons.) However, 
> b5e38970ffd55e2dd9f706ce75af9a8d7730b1b8 doesn't actually state
> that the client would ever crash or hang.

This wouldn't affect the client. All the patch here only affects the
core component, so the stack overflow would happen in the core.

I'm indeed not sure about what would happen in case of a stack
overflow. But, be it a crash or a hang, it would cause a denial of
service for any client connected to core.

> 3
>> The first is garbage characters caused by accidentally splitting
>> the string in the middle of a multibyte character. Since the new
>> code splits at a character level instead of a byte level, this
>> will no longer be an issue.
> 
> This one seems to be inherently about multibyte characters because 
> it's an issue of string display (or string interpretation) if
> whole characters aren't preserved. However, it doesn't seem to be
> announced as a security issue. Although someone might be sending 
> security-critical messages over IRC and would not want those
> messages to be misinterpreted, that's generally too much of a leap
> to have a CVE. If nobody else has other analysis, we will probably
> treat this as a non-security bug.

I don't believe this is to be considered as a security bug.
Especially, because due to the recursive, it would cause
reinterpreting the left string. It's unlikely it would be something
relevant that the core would dispatch to clients or server.

> 4
>> if it is unable to split a string, it will give up gracefully and
>> not crash the core or cause a thread to run away.
> 
> As far as we can tell, this is about:
> 
> // If the QTBF fails to find a split point in Grapheme mode, we
> give up. // This should never happen, but it should be handled
> anyway. qWarning() << "Unexpected failure to split message!"; 
> return msgsToSend;
> 
> in the patched code. If nobody else has other analysis, we will 
> probably treat this as a defense-in-depth measure that doesn't
> address any known vulnerability, and therefore has no CVE.

I believe this is more about in the removed code:
https://github.com/quassel/quassel/commit/b5e38970ffd55e2dd9f706ce75af9a8d7730b1b8#diff-2b819a1018ddf6b5fa4b750553df0742L801

But I'm not sure about how it could cause a crash, or a thread leak.

- -- 
Pierre Schweitzer <pierre at reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVFbg8AAoJEHVFVWw9WFsLpEQP+gJ8V1Z+i1RyQPuM6FiGNwqL
FOkAX+wC2ijGKpJgUvX6Hbi3g2SZma1tcSbCVxOX6aisrrDaDAK6c5SYBCSP+1bf
/8+1qIgbUd8kV16KdGLFDD2R9mrBxpIwUPGiBUK690B9GSec2Xl1ONo/FX4PXLdm
mwdSrTeVBimE2F4EE9Q15HJHE4KPeObSoqB3DaozVRI+GPcVEsu5S03wBMG/9zxY
DKxMpnR8WgTnW7wIXxSoiol8J3iDLj5PZ4NIRDu9k9SPwSGkR+61QaHUHlbew4mx
HF1znvAMeogut7VLKpnB2+uJDz99zKlYZ5ndkBbWeCuRH8CHrsRwv2seuSInzKOC
231xxtkrgg4RRuxGxMAo4r3fo0yERpe1r6n+swZy5Bpcgt1q96YCQjGF7iK12gcf
1dYpmff35hI1FDXl3Jxz+uTZ3SZJPNX1Jp1mh22BEDHtcdHhlntujOtdQNe/pPtU
GeTTv3l9CvbvWnh496Hn3QRw1u2S1Qntmn0OG2Y1v1JuUvhMxNWBTdQTZlI23Vzu
E9q2yf1RlYtXcUJUhlQlsw90h9/V8dbKJob3p+cYkW/bMrE/Nh9FAJCPWpl+uYGu
bFHIsmtPhk8qYp61mHIMipWE68iC0fTMjjXMLNkATQ2Vj3H6Ue8qACrM9aGaFmmI
V4jfpn2tBe7/VDKU7PwA
=k/fm
-----END PGP SIGNATURE-----
