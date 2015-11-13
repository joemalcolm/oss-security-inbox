X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["450" "Friday" "13" "November" "2015" "09:16:10" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20151113171610.GA21683@sentinelchicken.org>" "11" "Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Cc:" nil nil "11" "2015111317:16:10" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        tim-security Nov 13   11/450   " thread-indent "\"Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<1447424478.3340657.438908521.6EB6C975@webmail.messagingengine.com>" ("<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>" "<56445609.9050301@gmail.com>" "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>" "<20151112232245.GA1213@sentinelchicken.org>" "<1447424478.3340657.438908521.6EB6C975@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28454 invoked by uid 550); 13 Nov 2015 17:16:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28433 invoked from network); 13 Nov 2015 17:16:29 -0000
Message-ID: <20151113171610.GA21683@sentinelchicken.org>
References: <5640442C.1050501@redhat.com>
 <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
 <20151111160641.GQ1213@sentinelchicken.org>
 <56445609.9050301@gmail.com>
 <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>
 <20151112232245.GA1213@sentinelchicken.org>
 <1447424478.3340657.438908521.6EB6C975@webmail.messagingengine.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1447424478.3340657.438908521.6EB6C975@webmail.messagingengine.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: cve-assign@mitre.org
Date: Fri, 13 Nov 2015 09:16:10 -0800
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: Assign CVE for common-collections
 remote code execution on deserialisation flaw
To: oss-security@lists.openwall.com


> The patch[1] attached to that JIRA report would disable serialization by
> default. Any application that needs it would require a code change to
> re-enable it. This would break existing applications.

Right... so that's still speculation.  Speculation that apps actually
need to serialize objects of those particular classes.  There may very
well be applications that do that, but I just want to be sure we're
not overstating the downsides.

tim
