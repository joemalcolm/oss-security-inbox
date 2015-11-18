X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3898" "Tuesday" "17" "November" "2015" "16:17:03" "-0800" "Oracle Security Alerts (Thomas)" "secalert_us@oracle.com" "<564BC37F.4090000@oracle.com>" "107" "Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^CC:" nil nil "11" "2015111800:17:03" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        secalert_us@ Nov 17  107/3898  " thread-indent "\"Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<56463D9A.5080108@gmail.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>" "<56445609.9050301@gmail.com>" "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>" "<5645980D.9010105@gmail.com>" "<1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>" "<201511131617.tADGHauO002339@d03av02.boulder.ibm.com>" "<56463D9A.5080108@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19679 invoked by uid 550); 18 Nov 2015 00:17:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19653 invoked from network); 18 Nov 2015 00:17:26 -0000
Message-ID: <564BC37F.4090000@oracle.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com> <5640442C.1050501@redhat.com> <20151109215303.GN1213@sentinelchicken.org> <5641360D.8070102@eenterphace.org> <20151111002307.GP1213@sentinelchicken.org> <56431D4F.7090006@eenterphace.org> <20151111160641.GQ1213@sentinelchicken.org> <56445609.9050301@gmail.com> <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com> <5645980D.9010105@gmail.com> <1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com> <201511131617.tADGHauO002339@d03av02.boulder.ibm.com> <56463D9A.5080108@gmail.com>
In-Reply-To: <56463D9A.5080108@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
CC: cve-assign@mitre.org
Date: Tue, 17 Nov 2015 16:17:03 -0800
From: "Oracle Security Alerts (Thomas)" <secalert_us@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: Assign CVE for common-collections
 remote code execution on deserialisation flaw
To: Gsunde Orangen <gsunde.orangen@gmail.com>, oss-security@lists.openwall.com,
        security@apache.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

We do not have a problem with this use of the CVE# we registered
(CVE-2015-4852).

Thomas Keefe
Oracle Security Alerts


On 11/13/2015 11:44 AM, Gsunde Orangen wrote:
> inline...
> 
> On 2015-11-13, 17:14 Lisa Bradley wrote:
>> Seems Oracle has a CVE for this:
>> https://blogs.oracle.com/security/entry/security_alert_cve_2015_4852
> Thanks for the pointer!
> CVE-2015-4852 was thus created by Oracle CNA (to address the issue in
> WebLogic). I would propose to use this ID for Apache Commons-Collectio
ns
> as well, plus as a reference for other applications that suffer from
> unsafe deserialisation in combination with the functors packages.
> 
> But I am certainly not the one to decide ;-) - CC goes to Mitre, Apach
e
> & Oracle.
> 
> Regarding Mark's (valid) concerns see further down below.
> 
> Gsunde
> 
> 
> On 2015-11-13, 15:37 Mark Felder wrote:
>> On Fri, Nov 13, 2015, at 01:58, Gsunde Orangen wrote:
>>>
>>> I share Tim's view [2] and a dozen of (own) applications we checked
>>> won't break. A property that re-enables deserialization of course wo
uld
>>> help additionally: allow applications that really *need* this to get
 it
>>> working; but that requires an explicit step - so latest by that time
:
>>> those, whose applications break after including a "fixed" version of
>>> Commons-Collections would (hopefully) start to think about their des
ign.
>>>
>>> Gsunde
>>>
>>> [1] http://seclists.org/oss-sec/2015/q4/238
>>> [2] http://seclists.org/oss-sec/2015/q4/263
>>
>> This statement is how we have been operating our mitigation strategy:
>>
>> "Applications which use Apache Commons Collections and do not use
>> deserialization are not vulnerable."
> I agree
> 
>>
>> Assuming that statement is correct, disabling deserialization by defa
ult
>> doesn't offer additional protection to people. Instead it requires a
>> code change when they upgrade to re-enable it and cause them to be
>> vulnerable again.
> It does offer additional protection to those applications who use
> deserialization in general, but don't want to have this executed on th
e
> unsafe Commons-Collections classes (or even are not aware that theses
> classes are reachable via their remote interfaces).
> From my point of view and investigation this may be a lot of
> applications in the world.
> All those may not need to do anything else than upgrading their
> Commons-Collections package to be safe from this particular issue.
> (not addressing the important general issue of course yet...)
> 
>>
>> Would the greater community be better served by additional documentat
ion
>> on how to safely handle the deserialization in their application?
> Definitely yes, I agree! For the sustainable and long term.
> 
>> Is there such a method, or is this hopelessly broken?
> I have to leave this up to the top Java experts (where I am not a memb
er of)
> Again, this is something very useful for the long term (and honestly I
> would expect these activities starting latest by now - we may also awa
it
> the next posts, where others again will find other widespread classes
> that are exploitable in a similar way. The race is on...)
> 
> My main point with having a single CVE ID and a new Apache
> Commons-Collections version that fixes this ID is:
> If you don't do it, then you end up with 1-5 CVE ids (individually for
> those applications mentioned in the original publication: WebLogic,
> Jenkins, etc.) and they all are reported in the context of these
> individual applications only.
> We would miss to address a significant number of applications in the
> world, as it's not on their radar (but they have Commons-Collections
> included, so that is on their radar)
> 

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZLw30ACgkQf36Vx1dNy5r+xgCfS37T2qb+nqQDNjfQIGd8l484
zC8An0rJgwO+bkDYKGqckw/Uqo13VZUs
=Bm+E
-----END PGP SIGNATURE-----
