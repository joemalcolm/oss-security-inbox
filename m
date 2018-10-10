X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1476" "Wednesday" "10" "October" "2018" "08:38:50" "+0200" "Magnus Klaaborg Stubman" "magnus@stubman.eu" "<D2FFFDDC-6092-409E-B535-561A53B8763F@stubman.eu>" "44" "Re: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)" nil nil nil "10" "2018101006:38:50" "[oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)" (number mark "U       magnus@stubm Oct 10   44/1476  " thread-indent "\"Re: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of Service (exploit available)\"\n") "<20181009092102.oyyogeqoocjm6xmi@lorien.valinor.li>" ("<EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>" "<20181008223132.bmjr3z5agaq224et@intrepid>" "<20181009092102.oyyogeqoocjm6xmi@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17526 invoked by uid 550); 10 Oct 2018 11:47:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29744 invoked from network); 10 Oct 2018 06:39:43 -0000
X-Auth-ID: magnus@stubman.eu
X-Sender-Id: magnus@stubman.eu
From: Magnus Klaaborg Stubman <magnus@stubman.eu>
Message-Id: <D2FFFDDC-6092-409E-B535-561A53B8763F@stubman.eu>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2BED1BDF-BDA6-4EFE-9B41-BB1208010505"
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Date: Wed, 10 Oct 2018 08:38:50 +0200
In-Reply-To: <20181009092102.oyyogeqoocjm6xmi@lorien.valinor.li>
Cc: oss-security@lists.openwall.com
To: carnil@debian.org,
 abergmann@suse.com
References: <EC9F9CC1-4943-4CD5-8463-F40DF6BCA886@stubman.eu>
 <20181008223132.bmjr3z5agaq224et@intrepid>
 <20181009092102.oyyogeqoocjm6xmi@lorien.valinor.li>
X-Mailer: Apple Mail (2.3445.5.20)
Subject: Re: [oss-security] net-snmp 5.7.3 unauthenticated remote Denial of
 Service (exploit available)

--Apple-Mail=_2BED1BDF-BDA6-4EFE-9B41-BB1208010505
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi guys,

Yesterday I submitted a change request asking MITRE to mark CVE-2018-18066 =
as a duplicate of CVE-2015-5621.
Thank you for bringing the issue to my attention!

Magnus

> On 9 Oct 2018, at 11.21, Salvatore Bonaccorso <carnil@debian.org> wrote:
>=20
> Hi,
>=20
> On Tue, Oct 09, 2018 at 12:31:32AM +0200, Alexander Bergmann wrote:
>> Hi Magnus,
>>=20
>> thanks for your report. I can reproduce VULN#2 (CVE-2018-18065) with our
>> net-snmp-5.7.3 version (sle12/sle15). Our net-snmp-5.4.2.1 version seams
>> to be unaffected.
>>=20
>> Regarding your VULN#1 (CVE-2018-18066) I noticed that the patch was
>> already applied to our code base and CVE-2015-5621 was assigned. The
>> issue was already mentioned here at oss-security.
>>=20
>> https://www.openwall.com/lists/oss-security/2015/07/31/1
>>=20
>> I didn't check the details yet, but if the new CVE is a duplicate,
>> please contact NIST about it.
>=20
> Is it actually the same issue? I'm asking because for instance, there
> was indeed earlier CVE-2015-5621 and CVE-2018-1000116, which both were
> adressed with this same commit, but are considered two separate
> issues. So if CVE-2018-18066 is different from CVE-2015-5621 or
> CVE-2018-1000116, the assignment would not be a duplicate.
>=20
> Regards,
> Salvatore


--Apple-Mail=_2BED1BDF-BDA6-4EFE-9B41-BB1208010505--
