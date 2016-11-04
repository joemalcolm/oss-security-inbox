X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1821" "Friday" "4" "November" "2016" "08:27:43" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611040816000.375@tvnag.unkk.fr>" "39" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^cc:" nil nil "11" "2016110407:27:43" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        daniel@haxx. Nov  4   39/1821  " thread-indent "\"[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>" ("<40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28482 invoked by uid 550); 4 Nov 2016 07:28:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28370 invoked from network); 4 Nov 2016 07:28:02 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
In-Reply-To: <40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>
Message-ID: <alpine.DEB.2.20.1611040816000.375@tvnag.unkk.fr>
References: <40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="1129329158-985148748-1478244464=:375"
cc: robert@fedoraproject.org, oss-security@lists.openwall.com
Date: Fri, 4 Nov 2016 08:27:43 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host
To: cve-assign@mitre.org

--1129329158-985148748-1478244464=:375
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 8BIT

On Fri, 4 Nov 2016, cve-assign@mitre.org wrote:

> In some situations, this would be a site-specific problem at a registry. 
> Although domain names can have a variety of uses of '-' characters, the 
> presence of a '-' as both the third character and the fourth character is 
> often recognized as a special case. Trying to specify xn--strae-oqa.de 
> directly when seeking a registration is very different from trying to 
> specify (for example) x--strae-oqa.de or xn-strae-oqa.de.

DENIC alledgedly has rules that should prevent separate registrations like in 
the straﬂe.de case. Still it seems that this particular host name is 
registered by two different entities unless there's some background juggling 
that we can't easily see from the outside.

Those policies are obviously not flawless and now we end up in a sutiation 
where cients implementing different IDNA standards will end up on different 
servers. I suppose both can also get separate HTTPS certificates by simply 
using the puny encoded versions of their domain names when asking for them.

In addition to the IDNA confusion, I also learned that libidn2 doesn't do the 
necessary checks so just switching to that as we did in the curl patch for the 
advisory we're discussing here, is an insuffucient and inferior fix for this 
problem. We need to a bigger take.

One. Big. Mess.

I've suggested curl users to simply *disable* IDN completely in their builds 
now until we get something better done. To reduce the risk. There's no 
schedule or plan yet for when "something better" might be ready. I'll admit my 
energy level for this crap is very low.

-- 

  / daniel.haxx.se
--1129329158-985148748-1478244464=:375--
