X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["900" "Monday" "18" "April" "2016" "19:02:13" "+0200" "Stefan Kanthak" "stefan.kanthak@nexgo.de" "<60D0FDCD56934588AF304C64AE3CB80D@W340>" "32" "Re: [oss-security] CVE request: GnuPG classic & GnuPG modern" nil nil nil "4" "2016041817:02:13" "[oss-security] CVE request: GnuPG classic & GnuPG modern" (number mark "U       stefan.kanth Apr 18   32/900   " thread-indent "\"Re: [oss-security] CVE request: GnuPG classic & GnuPG modern\"\n") "<CANO=Ty3573jc3aMBDJN65Dy_9O2d1z0idwFjZXt3jpRaMAdzeA@mail.gmail.com>" ("<7510612AC6DE4FF2809D697069C10C6B@W340>" "<CANO=Ty3573jc3aMBDJN65Dy_9O2d1z0idwFjZXt3jpRaMAdzeA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9827 invoked by uid 550); 18 Apr 2016 17:11:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9326 invoked from network); 18 Apr 2016 17:09:22 -0000
X-Greylist: Passed host: 84.153.140.225
X-DKIM: Sendmail DKIM Filter v2.8.2 mail-in-17.arcor-online.net 3qpZPK1cgMzYvs
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nexgo.de; s=mail-in;
	t=1460999351; bh=Oqlh76AsIQ65veunbSW5Z1G6cFDbbYbn+63t1qSHK/E=;
	h=Message-ID:From:To:Cc:References:Subject:Date:MIME-Version:
	 Content-Type:Content-Transfer-Encoding;
	b=j7Tm4OEs4L8Emxcc1ziFR8+kKBHa/XBF2AT7vuRlIc2pYrip6YTwQqHXU0wkDzknS
	 d1oibJ5BlCtC7CkZEiYnxr+2YEHVCPm4/nIJLR1RotyZr6QIrDwf43OdAuNVmlDsWl
	 As71DmgdwD7IwPvYjsl8xNUhF1D3/r+79SHFckvE=
X-Greylist: Passed host: 84.153.140.225
Message-ID: <60D0FDCD56934588AF304C64AE3CB80D@W340>
From: "Stefan Kanthak" <stefan.kanthak@nexgo.de>
To: <oss-security@lists.openwall.com>
Cc: "CVE ID Requests" <cve-assign@mitre.org>
References: <7510612AC6DE4FF2809D697069C10C6B@W340> <CANO=Ty3573jc3aMBDJN65Dy_9O2d1z0idwFjZXt3jpRaMAdzeA@mail.gmail.com>
Date: Mon, 18 Apr 2016 19:02:13 +0200
Organization: Me, myself & IT
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.5931
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.6157
Subject: Re: [oss-security] CVE request: GnuPG classic & GnuPG modern

Kurt Seifried wrote:

> I suspect we're going to need a tiny bit more context around this request.
> Like... what's the CVE for?

Loading of multiple Windows system DLLs from the installers application
directory instead of Windows' system directory, a.k.a. DLL hijacking.

Well-known and well-documented for example in
<https://cwe.mitre.org/data/definitions/426.html>
<https://cwe.mitre.org/data/definitions/427.html>
<https://capec.mitre.org/data/definitions/471.html>

On Windows 7:
    uxtheme.dll, winmm.dll, samcli.dll, msacm32.dll, version.dll, sfc.dll,
    sfc_os.dll, userenv.dll, profapi.dll, dwmapi.dll, mpr.dll

On other versions of Windows: a similar list.

regards
Stefan

> On Mon, Apr 18, 2016 at 4:49 AM, Stefan Kanthak <stefan.kanthak@nexgo.de>
> wrote:
> 
>> Hi,
>>
>> please assign (1 or 2, as you like) CVEs for GnuPG classic and GnuPG
>> modern.
>>
>> regards
>> Stefan Kanthak
