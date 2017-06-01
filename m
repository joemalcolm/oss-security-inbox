X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6483" "Thursday" "1" "June" "2017" "07:17:41" "-0600" "Nicholas Luedtke" "nsl@hpe.com" "<54005790-f2e6-2654-fdbb-41652f32060d@hpe.com>" "192" "Re: [oss-security] Information on recent sqlite3 issues?" "^Date:" nil nil "6" "2017060113:17:41" "[oss-security] Information on recent sqlite3 issues?" (number mark "        nsl@hpe.com  Jun  1  192/6483  " thread-indent "\"Re: [oss-security] Information on recent sqlite3 issues?\"\n") "<EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>" ("<20170531203037.hxl4v36govklpenk@pisco.westfalen.local>" "<95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>" "<20170601062046.GI15203@suse.com>" "<EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30597 invoked by uid 550); 1 Jun 2017 13:54:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26382 invoked from network); 1 Jun 2017 13:17:56 -0000
References: <20170531203037.hxl4v36govklpenk@pisco.westfalen.local>
 <95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>
 <20170601062046.GI15203@suse.com>
 <EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>
Message-ID: <54005790-f2e6-2654-fdbb-41652f32060d@hpe.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="9FJJbes8vCrhLdEbQBsSvScrBHPm5m7qX"
Date: Thu, 1 Jun 2017 07:17:41 -0600
From: Nicholas Luedtke <nsl@hpe.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Information on recent sqlite3 issues?
To: oss-security@lists.openwall.com

--9FJJbes8vCrhLdEbQBsSvScrBHPm5m7qX
Content-Type: multipart/mixed; boundary="4qDOtaOftC1oqpaD25MLE25XLBM8aJPrO";
 protected-headers="v1"
From: Nicholas Luedtke <nsl@hpe.com>
To: oss-security@lists.openwall.com
Message-ID: <54005790-f2e6-2654-fdbb-41652f32060d@hpe.com>
Subject: Re: [oss-security] Information on recent sqlite3 issues?
References: <20170531203037.hxl4v36govklpenk@pisco.westfalen.local>
 <95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>
 <20170601062046.GI15203@suse.com>
 <EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>
In-Reply-To: <EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>

--4qDOtaOftC1oqpaD25MLE25XLBM8aJPrO
Content-Type: multipart/alternative;
 boundary="------------8C7B5CF484F3A730C6EC286D"
Content-Language: en-CA

This is a multi-part message in MIME format.
--------------8C7B5CF484F3A730C6EC286D
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 06/01/2017 07:14 AM, Kurt Seifried wrote:
> I will bring this up at the next cve board meeting (2 weeks from now).
>
>
> -Kurt
Thanks Kurt, its worth noting this happens often with libxml as well.

>> On Jun 1, 2017, at 00:20, Johannes Segitz <jsegitz@suse.de> wrote:
>>
>>> On Thu, Jun 01, 2017 at 12:24:10AM +0200, Andreas Stieger wrote:
>>> Hello,
>>>
>>>
>>>> On 05/31/2017 10:30 PM, Moritz Muehlenhoff wrote:
>>>> one of the latest Apple advisories mentions several vulnerabilities in=
 sqlite:
>>>> https://support.apple.com/en-us/HT207798
>>>>
>>>> CVE-2017-2513: found by OSS-Fuzz
>>>> CVE-2017-2518: found by OSS-Fuzz
>>>> CVE-2017-2520: found by OSS-Fuzz
>>>> CVE-2017-2519: found by OSS-Fuzz
>>>> CVE-2017-6983: Chaitin Security Research Lab (@ChaitinTech) working wi=
th Trend Micro's Zero Day Initiative
>>>> CVE-2017-6991: Chaitin Security Research Lab (@ChaitinTech) working wi=
th Trend Micro's Zero Day Initiative
>>>>
>>>> Does anyone have additional information on those and whether that
>>>> applies to the standard sqlite releases or Apple-specific changes?
>>> SUSE has asked Apple, but has not yet received an answer as far as I am
>>> aware.
>> They replied:
>>
>>> Thank you for contacting the Apple Product Security team.
>>>
>>> Please contact the SQLite maintainers to coordinate.
>> I think it is problematic that they assign CVEs but don't provice any
>> details even if it's not only their code. I contacted the sqlite-devs for
>> details but didn't receive a reply up to this point.
>>
>> Johannes

--=20
Nicholas Luedtke
HPE Linux Security, Hewlett-Packard Enterprise


--------------8C7B5CF484F3A730C6EC286D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8=
">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <div class=3D"moz-cite-prefix">On 06/01/2017 07:14 AM, Kurt Seifried
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:EC58D857-2282-4632-95E5-00205A75C51D@redhat.com">
      <pre wrap=3D"">I will bring this up at the next cve board meeting (2 =
weeks from now).


-Kurt</pre>
    </blockquote>
    Thanks Kurt, its worth noting this happens often with libxml as
    well.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:EC58D857-2282-4632-95E5-00205A75C51D@redhat.com">
      <pre wrap=3D"">
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">On Jun 1, 2017, at 00:20, Johannes Segitz <a class=
=3D"moz-txt-link-rfc2396E" href=3D"mailto:jsegitz@suse.de">&lt;jsegitz@suse=
.de&gt;</a> wrote:

</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"">On Thu, Jun 01, 2017 at 12:24:10AM +0200, Andreas =
Stieger wrote:
Hello,


</pre>
          <blockquote type=3D"cite">
            <pre wrap=3D"">On 05/31/2017 10:30 PM, Moritz Muehlenhoff wrote:
one of the latest Apple advisories mentions several vulnerabilities in sqli=
te:
<a class=3D"moz-txt-link-freetext" href=3D"https://support.apple.com/en-us/=
HT207798">https://support.apple.com/en-us/HT207798</a>

CVE-2017-2513: found by OSS-Fuzz
CVE-2017-2518: found by OSS-Fuzz
CVE-2017-2520: found by OSS-Fuzz
CVE-2017-2519: found by OSS-Fuzz
CVE-2017-6983: Chaitin Security Research Lab (@ChaitinTech) working with Tr=
end Micro's Zero Day Initiative
CVE-2017-6991: Chaitin Security Research Lab (@ChaitinTech) working with Tr=
end Micro's Zero Day Initiative

Does anyone have additional information on those and whether that
applies to the standard sqlite releases or Apple-specific changes?
</pre>
          </blockquote>
          <pre wrap=3D"">
SUSE has asked Apple, but has not yet received an answer as far as I am
aware.
</pre>
        </blockquote>
        <pre wrap=3D"">
They replied:

</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"">Thank you for contacting the Apple Product Securit=
y team.

Please contact the SQLite maintainers to coordinate.
</pre>
        </blockquote>
        <pre wrap=3D"">
I think it is problematic that they assign CVEs but don't provice any
details even if it's not only their code. I contacted the sqlite-devs for
details but didn't receive a reply up to this point.

Johannes
</pre>
      </blockquote>
    </blockquote>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Nicholas Luedtke
HPE Linux Security, Hewlett-Packard Enterprise</pre>
  </body>
</html>

--------------8C7B5CF484F3A730C6EC286D--

--4qDOtaOftC1oqpaD25MLE25XLBM8aJPrO--

--9FJJbes8vCrhLdEbQBsSvScrBHPm5m7qX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJZMBP3AAoJEL+bDtw6splILf8P/RxbdxPtTmaZmVJWMu19qK72
xnUw3aQUNGviTVBRHKFH4UsxU0B3wzjcs5wCzQrBP8aJheVTED/cNvbtbtKK+tyu
AswMsuj+fLRrtZIJdBF+K73pAbfpcZP3PR/Cc27lOhPiY7PGTqh3z7CCCwTofPet
CkKzx3/WkObKjNDT3RqvdHQh+62+upvQSmQnksAP25bAoEFS5saOQQYLgScyEBq7
E3S3shQ4lcWsAqM1M02beIAwhY/Cabz/4am/W8Ce0LWObVTlgX/wN8SuOpA8mTrP
Mzyen8oVtR2Hc3PT3mE9UUVlL/y2tPUfxpXPmSMV8bhStI5A6sk+s/P+uoJQfqEH
4/LfwSoKKR7Bx7uhq/IxUhEwghJCKBGIagfRc2q9Wtl6bEZkzFDrVWVxx+MqBl2y
Lsxie8J+Hpmx1RAf5LiddT0b2PQi2qppJZbbAdQxvcR+VhnxnuMvqQ86+2DDdcf2
Fc8+33tAvHrcgWW5Z55F437WjLIBHkyssJrDuTOW7YkGOfVg7WID0hs8YKlT+4Ik
xDaYjSpJRYF0pj7W/48zySug2PwWcAb/DQYyUnL3hmb5h4+f++zoWQ9hoJTDfsDs
Q4bRaWDC9oc3OB95ApkKGocHNFu46Luq+sogAbGAOVcUQdF3YR6Dgp4aTknwfv1M
BjSfAgXf+XQ1ZWd9qvSM
=L/6e
-----END PGP SIGNATURE-----

--9FJJbes8vCrhLdEbQBsSvScrBHPm5m7qX--
