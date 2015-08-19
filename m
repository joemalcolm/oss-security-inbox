X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14356" "Wednesday" "19" "August" "2015" "16:53:12" "-0400" "sophia" "sophia@trailofbits.com" "<3F44AEC5-FF76-430D-BD8E-CC0E2E6BBDC0@trailofbits.com>" "306" "Re: [oss-security] CVE request - Processor side channels using out of order execution" nil nil nil "8" "2015081920:53:12" "[oss-security] CVE request - Processor side channels using out of order execution" (number mark "        sophia@trail Aug 19  306/14356 " thread-indent "\"Re: [oss-security] CVE request - Processor side channels using out of order execution\"\n") "<CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com>" ("<9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com>" "<20150812141846.GA8647@openwall.com>" "<E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>" "<E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com>" "<CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9915 invoked by uid 550); 19 Aug 2015 20:53:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9887 invoked from network); 19 Aug 2015 20:53:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=trailofbits;
        h=from:content-type:message-id:mime-version:subject:date:references
         :to:in-reply-to;
        bh=QjSag/RFqB2BpFZzFxC59UnLMSoyuKl9s4rRQylENrg=;
        b=GCL7NqNiD6z+L5/d+dowJ1QbhxbEnkWq/B1OfklTnvDhcQbv7z45BhoQ5cexscLG9U
         0LVApNwjItjgefzjpPUxuxkY1/nDI/1otUUU+LylP432Ood9n+d5jfoV3FEeVfxMcKN1
         v/uUo6uIYpXcbWF2L2mU6/M5A2h38ywX4UaqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-type:message-id:mime-version
         :subject:date:references:to:in-reply-to;
        bh=QjSag/RFqB2BpFZzFxC59UnLMSoyuKl9s4rRQylENrg=;
        b=EK4OAaxOog2rqxpSR9neOIZ/wgikCE7ygxlYJ6Yt/npjbpNHNZrbIAbps+vMICvwsW
         HDr47eX+nRJOQGETsUFUc09JPOSCj3+PP5w2cJUE3vnT69Ca72tKQX0TJvwyoesdrtxC
         e4IaEEqIg7fUihY4QsmEcjJndF+YHvG9/FIF6wOdIOea7RXvZlpObPlp0R6d5bbCHrCw
         5UIzbZIeTk65emFsR2ceoT2+apnKgT+URiK9CnwIOjqGdDRykawz3pdfZ3AFveQzUSI/
         6Wh4V4IAwbRNrZmGLU0WacBAV4NiG7YTqecHlOmoTiQ/bjrTEH7NYAByNK/Cin52h38G
         ubsQ==
X-Gm-Message-State: ALoCoQk1+JUvIGfJdINkVndCbFGuD5BdTk3tB4XC9OFJDYHgCBVkSABM5J8SCMzq25rbzzXOt1vH
X-Received: by 10.140.32.66 with SMTP id g60mr26915230qgg.66.1440017599410;
        Wed, 19 Aug 2015 13:53:19 -0700 (PDT)
Content-Type: multipart/signed; boundary="Apple-Mail=_1382FF96-A160-4343-932F-700D2E7FD08B"; protocol="application/pkcs7-signature"; micalg=sha1
Message-Id: <3F44AEC5-FF76-430D-BD8E-CC0E2E6BBDC0@trailofbits.com>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
References: <9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com> <20150812141846.GA8647@openwall.com> <E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com> <E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com> <CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com>
In-Reply-To: <CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com>
X-Mailer: Apple Mail (2.2102)
Date: Wed, 19 Aug 2015 16:53:12 -0400
From: sophia <sophia@trailofbits.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Processor side channels using out of order execution
To: oss-security@lists.openwall.com

--Apple-Mail=_1382FF96-A160-4343-932F-700D2E7FD08B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Thanks for the resource :)


> On Aug 19, 2015, at 4:40 PM, Kurt Seifried <kseifried@redhat.com> wrote:
>=20
> Asking oss-security is generally a correct way (mitre's cve assign reads
> this list). For future reference please see:
>=20
> https://github.com/RedHatProductSecurity/CVE-HOWTO
>=20
>=20
>=20
> On Wed, Aug 19, 2015 at 2:29 PM, sophia <sophia@trailofbits.com> wrote:
>=20
>> Hi,
>>=20
>> Just wondering how to get more information about the process for
>> requesting a CVE for this vulnerability.
>>=20
>> Sophia
>>=20
>>> On Aug 12, 2015, at 12:24 PM, sophia <sophia@trailofbits.com> wrote:
>>>=20
>>> Hi Alexander,
>>>=20
>>> Thanks for taking the time to read into this. I agree that attack types
>> 2-7 are not limited to my technique. However, depending on the software
>> there may be different mitigations for my attack and I believe they shou=
ld
>> be tracked separately.
>>>=20
>>> The vulnerability definitely applies to hypervisors as used by popular
>> commercial cloud platforms. These hypervisors try to guarantee that one
>> user's processes in a VM are meant to be isolated from another VM's.
>> Isolation is referenced as a feature multiple times in Xen's spec:
>> http://www-archive.xenproject.org/files/Marketing/WhyXen.pdf.
>>>=20
>>> You are correct in saying the novelty is the avenue which the side
>> channel is measured: over the pipeline's instruction reordering rather t=
han
>> over timing in the cache. This means that defensive techniques which
>> mitigate cache timing attacks (such as partitioning the cache so lines a=
re
>> not shared, etc..) may not protect against this one.
>>>=20
>>> It's possible to write a program that leak information via pipeline side
>> channels but not to cache timing side channels. For example, a program t=
hat
>> reorders two pairs of loads and stores will have no measurable cache tim=
ing
>> difference, but will be measurable via the pipeline.
>>>=20
>>> Also, I will release all of my code on my website when I get back to my
>> server later today.
>>>=20
>>> Thanks for the discussion,
>>>=20
>>> Sophia
>>>=20
>>>=20
>>>=20
>>>> On Aug 12, 2015, at 10:18 AM, Solar Designer <solar@openwall.com>
>> wrote:
>>>>=20
>>>> Hi Sophia,
>>>>=20
>>>> On Tue, Aug 11, 2015 at 09:35:26PM -0400, sophia wrote:
>>>>> Past discussion of this includes:
>> http://www.openwall.com/lists/oss-security/2015/08/11/16
>>>>>=20
>>>>> Details of attack:
>>>>>=20
>> https://blog.trailofbits.com/2015/07/21/hardware-side-channels-in-the-cl=
oud/
>>>> [...]
>>>>> Brief Description:
>>>>> Simultaneous multi-threading on current processors allows for one
>> process to exploit out-of-order execution optimizations to leak informat=
ion
>> from co-executed processes. Conversely, this same setup allows for one
>> process to force an increase or a decrease in out-of-order-execution
>> optimizations in the other process, thereby effecting its computed values
>> and control flow.
>>>>=20
>>>> First of all, this is fine work.  Thank you for spending your time on
>> it.
>>>>=20
>>>> Then, can we try to summarize what the novelty in your research is?
>>>>=20
>>>> Here's my take at it: the novelty is primarily in use of other than
>>>> direct timing measurements on the receiving or attacker end (instead,
>>>> you observe memory reordering, even though it's also dependent on
>>>> timings internally), and secondarily in targeting out-of-order executi=
on
>>>> rather than caching.  (Yet another thing to target, and one I consider=
ed
>>>> and briefly played with on P4 with HT in 2005 when I saw Colin
>>>> Percival's paper, would be utilization of different execution units
>>>> within a core, which is measurable from another hardware thread running
>>>> on the same core.  Surprisingly, I am still unaware of published
>>>> research on that.)
>>>>=20
>>>> That's great.  However, to figure out whether this poses a new
>>>> vulnerability (rather than "merely" a novel exploitation technique for
>>>> what were already considered vulnerabilities), we may want to determine
>>>> whether there (might) exist programs that are vulnerable to your attac=
ks
>>>> yet invulnerable to previously known attacks.  Do these exist, and what
>>>> are they (or what would they be like)?
>>>>=20
>>>> Of the 7 attack types you listed in your thesis, 2 through 7 don't
>>>> appear to be limited to your novel attack technique.  They are also
>>>> do-able by cache timings on the same hardware.  Do you agree?  Also,
>>>> for most systems the ability to deliberately construct a covert channel
>>>> between two processes or VMs isn't considered a vulnerability.  The
>>>> system designers would need to specifically claim to prevent covert
>>>> channels in order for this to become a vulnerability.
>>>>=20
>>>> As to attack type 1, cryptographic key theft, I'd be interested in more
>>>> detail on it.  Am I correct that this attack relies on the victim
>>>> program doing secret-dependent branching or at least secret-dependent
>>>> indexing (in the latter case, out-of-order execution might be affected
>>>> by caching and by cache bank conflicts)?  If so, that same program
>>>> might be susceptible to a cache timing attack on its instruction fetch=
es
>>>> (as well as execution unit utilization attack, but like I mentioned th=
is
>>>> is surprisingly lacking published research), and in the latter case al=
so
>>>> to the classic cache timing attack.  Now, "might be" is not same as
>>>> "always is", so there might be cases where your attack is the only kno=
wn
>>>> one that works.  (For example, I think secret-dependent branching with=
in
>>>> one cache line _might_ be unrealistic to attack as such, but might be
>>>> exploitable via its effect on out-of-order execution and memory
>>>> reordering, or via execution unit utilization.)
>>>>=20
>>>> Do I understand correctly that for attack type 1, there should be at
>>>> least 3 concurrent threads: the victim and two attacker threads (these
>>>> two would be performing reorder-"unsafe" memory operations between
>>>> themselves)?  And that at least the victim and one of the attacker
>>>> threads would need to be scheduled onto the same core (as different
>>>> hardware threads)?
>>>>=20
>>>> Would you release the code, please?  So far, I only saw your receiver.=
py
>>>> and sender.py, which look like high-level wrappers for a demo, but lack
>>>> the substance.
>>>>=20
>>>> Another aspect is whether "the issue" (the focus of your research) is
>>>> realistically fixable as a vulnerability anywhere.  I don't care about
>>>> CVEs much (and we'll see what MITRE says on this), but FWIW Colin
>>>> Percival's 2005 work did receive a CVE ID:
>>>>=20
>>>> http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2005-0109
>>>>=20
>>>> and there were a handful of security advisories, such as:
>>>>=20
>>>> https://www.freebsd.org/security/advisories/FreeBSD-SA-05:09.htt.asc
>>>>=20
>>>> At the time, only the workaround of disabling HT was suggested, but e.=
g.
>>>> the FreeBSD advisory also said:
>>>>=20
>>>> "NOTE:  It is expected that future work in cryptographic libraries and
>>>> operating system schedulers may remedy this problem for many or most
>>>> users, without necessitating the disabling of Hyper-Threading
>>>> Technology.  Future advisories will address individual cases."
>>>>=20
>>>> and we've since seen such work (changes to crypto libraries and
>>>> programs are practical and already deployed, but changes to schedulers
>>>> appear to be more recent and only academic - granting temporary
>>>> exclusive use of CPU cores to programs processing sensitive data).
>>>>=20
>>>> When a particular crypto library or program was found to be vulnerable
>>>> to cache timing side-channels, this was generally treated as a separate
>>>> vulnerability (and getting its own CVE ID).
>>>>=20
>>>> I guess there's probably a 100% overlap between vulnerabilities that
>>>> would be treated as potentially susceptible to cache timing and to
>>>> out-of-order / memory reordering attacks, even if in practice the
>>>> likelihood of exploitation via these methods might vary drastically.
>>>> (This guess is based on my current understanding as described above.)
>>>>=20
>>>> Finally, arguably, systems with any shared resources are knowingly
>>>> taking a performance/$ vs. security tradeoff.  It is very important for
>>>> us to have an idea just how bad (or not) the security impact is in
>>>> practice, so your research is a step in the right direction.
>>>>=20
>>>> Thanks again for working on this.
>>>>=20
>>>> Alexander
>>>=20
>>=20
>>=20
>=20
>=20
> --=20
>=20
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com


--Apple-Mail=_1382FF96-A160-4343-932F-700D2E7FD08B
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEH
AQAAoIILojCCBUwwggQ0oAMCAQICEAL56ypnHWS/F8dwJWA+AOYwDQYJKoZI
hvcNAQELBQAwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IElu
YzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNl
cnQgU0hBMiBBc3N1cmVkIElEIENBMB4XDTE1MDYxMzAwMDAwMFoXDTE3MDYx
MzEyMDAwMFowbDELMAkGA1UEBhMCVVMxETAPBgNVBAgTCE5ldyBZb3JrMREw
DwYDVQQHEwhOZXcgWW9yazEcMBoGA1UEChMTVHJhaWwgb2YgQml0cywgSW5j
LjEZMBcGA1UEAxMQU29waGlhIEQnQW50b2luZTCCASIwDQYJKoZIhvcNAQEB
BQADggEPADCCAQoCggEBALibdvJKpV9e9XplNqi/LA6My7jHmWibia0A3yGr
W5Ww2Xf4sBib2xDoHdNgKoN4QIL5UD/us+dUgBKYrafkar/gO89ziiLE0L/c
BJjGAQcHX7J9fyYlqls3dRT7yoQQMjx7k9M/CnSSg5yoWH6R1CQtK/G6jE4u
yM3DeMUkmV8F+iGjNiwul871RAgPBM/Xkr6VIjUO4bgwpn5giB8FFqYkc9mb
rwdV5wg684QitrIze1bu3U3I2G+GBWDzpxnA3vW4HkOxCABK/l6EehavCp2B
OJO1kZ/vyPVqSlnkRDSWdeYrnm9tZeXol7ddza+uUW3T/Se8Z5taoscwJX7a
qKECAwEAAaOCAe8wggHrMB8GA1UdIwQYMBaAFOcCI4AAT9jXvJQL2T90OUky
PIp5MB0GA1UdDgQWBBStwjnVHFMKXJyNRJ+tW6turV/02TAMBgNVHRMBAf8E
AjAAMCEGA1UdEQQaMBiBFnNvcGhpYUB0cmFpbG9mYml0cy5jb20wDgYDVR0P
AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDBDBgNV
HSAEPDA6MDgGCmCGSAGG/WwEAQIwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93
d3cuZGlnaWNlcnQuY29tL0NQUzCBiAYDVR0fBIGAMH4wPaA7oDmGN2h0dHA6
Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJBc3N1cmVkSURDQS1n
MS5jcmwwPaA7oDmGN2h0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9EaWdpQ2Vy
dFNIQTJBc3N1cmVkSURDQS1nMS5jcmwweQYIKwYBBQUHAQEEbTBrMCQGCCsG
AQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKG
N2h0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJBc3N1
cmVkSURDQS5jcnQwDQYJKoZIhvcNAQELBQADggEBAJrBIpXWeP/1/76Bo/Q7
D2UILcypj2tJZnJTECIntAI0R7IolN2ulULRSJ9Ko6Zvh70QJclS6KRci9bc
aMe4FMx3G/bdvFjpQkaJ6+uxbTrXHLe51jBzM1YmpTgrAj3lP3LRAPuB52K7
rvc+BOYCqP4MqhJafNS+rPobxf196KpQtgr6+L05L+keEXQOea+nCTTMyMgS
OisKA7Kf4KebrfW925XK9zyD9PAvSrfqYsOaHgGdVwrUuN+mZAXqVZrGAnD/
N5M/NJICD8DDA1qqzLtLQjkaTVV1z8IyuXJqIbdlmYKuDyW8ZDNmHsNKKJhu
zo8pKsNBoZI/ZGCBf77YFMQwggZOMIIFNqADAgECAhAErnlgZmaQGrnFf6Zs
W9zNMA0GCSqGSIb3DQEBCwUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxE
aWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNV
BAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0xMzExMDUxMjAw
MDBaFw0yODExMDUxMjAwMDBaMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxE
aWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNV
BAMTG0RpZ2lDZXJ0IFNIQTIgQXNzdXJlZCBJRCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBANz4ESM/arXvwCd5Gy0Fh6IQQzHfDtQVG093
pCLOPoxw8L4Hjt0nKrwBHbYsCsrdaVgfQe1qBR/aY3hZHiIsK/i6fsk1O1bx
H3xCfiWwIxnGRTjXPUT5IHxgrhywWhgEvo8796nwlJqmDGNJtkEXU0AyvU/m
UHpQHyVF6PGJr83/Xv9Q8/AXEf+9xYn1vWK52PuORQSFbZnNxUhN/SarAjZF
6jbXX2riGoJBCtzp2fWRF47GIa04PBPmHn9mnNVN2Uba9s9Sp307JMO0wVE1
xpvr1O9+5HsD4US9egs34E/LgooNcRjkpuCJLBvzsnM8wbCSnhh9vat9xX0I
oSzCn3MCAwEAAaOCAvgwggL0MBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0P
AQH/BAQDAgGGMDQGCCsGAQUFBwEBBCgwJjAkBggrBgEFBQcwAYYYaHR0cDov
L29jc3AuZGlnaWNlcnQuY29tMIGBBgNVHR8EejB4MDqgOKA2hjRodHRwOi8v
Y3JsNC5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290Q0EuY3Js
MDqgOKA2hjRodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1
cmVkSURSb290Q0EuY3JsMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcD
BDCCAbMGA1UdIASCAaowggGmMIIBogYKYIZIAYb9bAACBDCCAZIwKAYIKwYB
BQUHAgEWHGh0dHBzOi8vd3d3LmRpZ2ljZXJ0LmNvbS9DUFMwggFkBggrBgEF
BQcCAjCCAVYeggFSAEEAbgB5ACAAdQBzAGUAIABvAGYAIAB0AGgAaQBzACAA
QwBlAHIAdABpAGYAaQBjAGEAdABlACAAYwBvAG4AcwB0AGkAdAB1AHQAZQBz
ACAAYQBjAGMAZQBwAHQAYQBuAGMAZQAgAG8AZgAgAHQAaABlACAARABpAGcA
aQBDAGUAcgB0ACAAQwBQAC8AQwBQAFMAIABhAG4AZAAgAHQAaABlACAAUgBl
AGwAeQBpAG4AZwAgAFAAYQByAHQAeQAgAEEAZwByAGUAZQBtAGUAbgB0ACAA
dwBoAGkAYwBoACAAbABpAG0AaQB0ACAAbABpAGEAYgBpAGwAaQB0AHkAIABh
AG4AZAAgAGEAcgBlACAAaQBuAGMAbwByAHAAbwByAGEAdABlAGQAIABoAGUA
cgBlAGkAbgAgAGIAeQAgAHIAZQBmAGUAcgBlAG4AYwBlAC4wHQYDVR0OBBYE
FOcCI4AAT9jXvJQL2T90OUkyPIp5MB8GA1UdIwQYMBaAFEXroq/0ksuCMS1R
i6enIZ3zbcgPMA0GCSqGSIb3DQEBCwUAA4IBAQBO1Iknuf0dh3d+DygFkPEK
L8k7Pr2TnJDGr/qRUYcyVGvoysFxUVyZjrX64GIZmaYHmnwTJ9vlAqKEEtkV
9gpEV8Q0j21zHzrWoAE93uOC5EVrsusl/YBeHTmQvltC9s6RYOP5oFYMSBDO
M2h7zZOr8GrLT1gPuXtdGwSBnqci4ldJJ+6Skwi+aQhTAjouXcgZ9FCATgLZ
sF2RtJOH+ZaWgVVAjmbtgti7KF/tTGHtBlgoGVMRRLxHICmyBGzYiVSZO3Xb
Z3gsHpJ4xlU9WBIRMm69QwxNNNt7xkLb7L6rm2FMBpLjjt8hKlBXBMBgojXV
JJ5mNwlJz9X4ZbPg4m7CMYIDGTCCAxUCAQEweTBlMQswCQYDVQQGEwJVUzEV
MBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQu
Y29tMSQwIgYDVQQDExtEaWdpQ2VydCBTSEEyIEFzc3VyZWQgSUQgQ0ECEAL5
6ypnHWS/F8dwJWA+AOYwCQYFKw4DAhoFAKCCAXUwGAYJKoZIhvcNAQkDMQsG
CSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTUwODE5MjA1MzE0WjAjBgkq
hkiG9w0BCQQxFgQUWI8HAnNbLMFApuwmC22i+3eAmLgwgYgGCSsGAQQBgjcQ
BDF7MHkwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZ
MBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQg
U0hBMiBBc3N1cmVkIElEIENBAhAC+esqZx1kvxfHcCVgPgDmMIGKBgsqhkiG
9w0BCRACCzF7oHkwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0
IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGln
aUNlcnQgU0hBMiBBc3N1cmVkIElEIENBAhAC+esqZx1kvxfHcCVgPgDmMA0G
CSqGSIb3DQEBAQUABIIBABztamDz+F8NsFbEWzMJs0dOen1Wfdq/0dlUHgJD
Yr6Uumt0oJSRVcAeB82TfswrRv4cQqJTC/2a4jnX2z1ioLVW3rn8b2ijyZc9
fFRxCskeIPtiouBO07si3IfL02ODt8SZaoD+7Khoh38yQ/ovRP8hJMh3Lyx5
HCbywsPChvDJf2hJFMUVcQvygab3/N45sxAjyPpoz7xHMnY6xmz86lFf8SX4
SIszeiO42/X9qLPOONc2n2JtGC2vQT+vS+b153Fa6LUNylDXzbwk7Zav2VRm
J4tAY482zLl44s1SnJ5ATkyQHeuQ+1HucsynFDkdR48YTDsdaXZhrZnPwacc
4UAAAAAAAAA=

--Apple-Mail=_1382FF96-A160-4343-932F-700D2E7FD08B--
