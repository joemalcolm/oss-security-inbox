X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1872" "Saturday" "5" "September" "2020" "05:47:04" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20200905054704.1d90da6a@jabberwock.cb.piermont.com>" "42" "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" "^Cc:" nil nil "9" "2020090509:47:04" "[oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" (number mark "        perry@piermo Sep  5   42/1872  " thread-indent "\"Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework\"\n") "<CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>" ("<CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13663 invoked by uid 550); 5 Sep 2020 09:47:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13645 invoked from network); 5 Sep 2020 09:47:17 -0000
Message-ID: <20200905054704.1d90da6a@jabberwock.cb.piermont.com>
In-Reply-To: <CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>
References: <CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Sat, 5 Sep 2020 05:47:04 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Open Source Tool | vPrioritization | Risk
 Prioritization Framework
To: Pramod Rana <varchashva@gmail.com>

[Perhaps somewhat off topic, but the original announcement felt a bit
tangental as well.]

On Thu, 3 Sep 2020 20:13:34 +0530 Pramod Rana <varchashva@gmail.com>
wrote:
> It is no secret that today we have more vulnerabilities than we can
> assess and remediate, timely and comprehensively. Risk
> prioritization is a key component for any vulnerability management
> program.

I'm not sure I agree with this premise.

1. It is entirely feasible to keep even a very large organization
comprehensively patched. There are organizations that do that.
2. It is not feasible to calculate a probability of exploitation of a
given vulnerability, and it is not feasible to determine how bad the
damage from exploitation will be. This is a classic example of "tail
risk" where probability distributions are simply not calculable by
normal methods.

I keep hearing people in the security industry speak about scientific
risk assessment as though it were possible. I don't think it's
possible, and it seems cheaper to simply patch than to do some sort
of scientific assessment and prioritization of patches.

My gut reaction is that the growth of this idea is attributable
to the large number of large, well-funded organizations that are
none the less not capable of properly maintaining their own
infrastructure and thus not capable of patching in a timely manner.
(I have consulted to many such organizations.)

The notion that some sort of "risk analytics" could therefore justify
failing to patch quickly and give a rationale for maintaining an
incapable systems management team is thus attractive. However, the
real solution is simply to patch; a capable systems management team is
better than the illusion of a risk calculation system, and provides
far more benefits than simply maintaining infrastructure in a fully
patched state.

Perry
-- 
Perry E. Metzger		perry@piermont.com
