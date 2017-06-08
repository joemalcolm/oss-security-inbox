X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["859" "Thursday" "8" "June" "2017" "15:57:22" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1706081553010.6802@scrappy.simplesystems.org>" "23" "Re: [oss-security] Is not memory allocation failure a bug?" "^Date:" nil nil "6" "2017060820:57:22" "[oss-security] Is not memory allocation failure a bug?" (number mark "        bfriesen@sim Jun  8   23/859   " thread-indent "\"Re: [oss-security] Is not memory allocation failure a bug?\"\n") "<Pt-83jwf2wIZWtzGXuxFRphTN3WPGd-CEW7l7azzh3VRvvFOvQ36Hb3UOEfZZl5PO-EPBwFXleTVJC83LFxYJVvPWkXYDRmtM_aUzsp573c=@protonmail.com>" ("<Pt-83jwf2wIZWtzGXuxFRphTN3WPGd-CEW7l7azzh3VRvvFOvQ36Hb3UOEfZZl5PO-EPBwFXleTVJC83LFxYJVvPWkXYDRmtM_aUzsp573c=@protonmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16297 invoked by uid 550); 8 Jun 2017 20:57:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16260 invoked from network); 8 Jun 2017 20:57:35 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <Pt-83jwf2wIZWtzGXuxFRphTN3WPGd-CEW7l7azzh3VRvvFOvQ36Hb3UOEfZZl5PO-EPBwFXleTVJC83LFxYJVvPWkXYDRmtM_aUzsp573c=@protonmail.com>
Message-ID: <alpine.GSO.2.20.1706081553010.6802@scrappy.simplesystems.org>
References: <Pt-83jwf2wIZWtzGXuxFRphTN3WPGd-CEW7l7azzh3VRvvFOvQ36Hb3UOEfZZl5PO-EPBwFXleTVJC83LFxYJVvPWkXYDRmtM_aUzsp573c=@protonmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Thu, 08 Jun 2017 15:57:22 -0500 (CDT)
Date: Thu, 8 Jun 2017 15:57:22 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Is not memory allocation failure a bug?
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

On Thu, 8 Jun 2017, Qhdwns123 wrote:

> HI
>
> I found a memory allocation failure and reported it to the developer.
>
> But in the process of communicating, they are not bugs.
>
> Do you have experience similar to me?

Memory allocation failures are normal since there are always finite 
memory resources and requests may be based on the amount of work to be 
performed.  If a memory allocation failure can be unreasonably induced 
(e.g. a 100 byte input file consumes 100 GB of memory) and the 
impacted software (or whole system) is expected to remain running 
continually in order to provide service for many users, then there 
would be a denial of service opportunity, which could be serious.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
