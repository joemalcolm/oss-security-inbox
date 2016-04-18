X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/18/9
Message-ID: <60D0FDCD56934588AF304C64AE3CB80D@W340>
Date: Mon, 18 Apr 2016 19:02:13 +0200
From: "Stefan Kanthak" <stefan.kanthak@...go.de>
To: <oss-security@...ts.openwall.com>
Cc: "CVE ID Requests" <cve-assign@...re.org>
Subject: Re: CVE request: GnuPG classic & GnuPG modern
Content-Type: text/plain; charset=utf-8

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

> On Mon, Apr 18, 2016 at 4:49 AM, Stefan Kanthak <stefan.kanthak@...go.de>
> wrote:
> 
>> Hi,
>>
>> please assign (1 or 2, as you like) CVEs for GnuPG classic and GnuPG
>> modern.
>>
>> regards
>> Stefan Kanthak
