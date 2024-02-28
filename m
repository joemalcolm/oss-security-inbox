Received: (qmail 32752 invoked by uid 550); 28 Feb 2024 15:01:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32197 invoked from network); 28 Feb 2024 15:00:33 -0000
Date: Wed, 28 Feb 2024 16:04:05 +0100
From: Solar Designer <solar@openwall.com>
To: Ali Raza Mumtaz <raza.mumtaz@ebryx.com>
Cc: oss-security@lists.openwall.com,
	Faran Abdullah <faran.abdullah@ebryx.com>
Message-ID: <20240228150405.GA14767@openwall.com>
References: <AM0PR05MB6660688A27BDB6F3CD0B6286FD582@AM0PR05MB6660.eurprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM0PR05MB6660688A27BDB6F3CD0B6286FD582@AM0PR05MB6660.eurprd05.prod.outlook.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2024-22857: Heap Based Buffer overflow in zlog library

Hi,

On Wed, Feb 28, 2024 at 09:24:29AM +0000, Ali Raza Mumtaz wrote:
> We have found a vulnerability in zlog that is essentially a heap-based buffer overflow leading to denial of service and arbitrary code execution.
> 
> We have been trying to contact the maintainer of this project for almost three months and haven't received any response. Additionally, we have reserved a CVE number with MITRE (CVE-2024-22857) and now we intend to publish it.
> 
> We have a working PoC that provides code execution, along with a detailed blog regarding this vulnerability (which, of course, remains unpublished).

Thank you for bringing this to oss-security.  Normally, we expect
postings to include actual vulnerability detail right away, but I
understand the circumstances here are different.

I found that you also brought this up in:

https://github.com/HardySimpson/zlog/issues/250

and I've just posted some comments to there.  It appears that zlog
author Hardy Simpson is currently mostly inactive on GitHub and with the
project - only one contribution in a year (on December 4).  However,
another person was merging pull requests recently, so maybe they can
help, as I am asking in a comment I posted.

Please remember to add the full vulnerability detail in a reply to this
oss-security thread on the same day that the same information is made
public elsewhere (e.g., in a GitHub pull request).

Please also do this soon (e.g., in a couple of weeks from now) even in
case communication with project maintainers doesn't start or fails, so
that distros and users have a chance to know the risk and patch the
issue on their own.

Thanks,

Alexander
