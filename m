Received: (qmail 13925 invoked by uid 550); 20 Jun 2025 21:22:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3708 invoked from network); 20 Jun 2025 21:05:01 -0000
Date: Fri, 20 Jun 2025 22:04:52 +0100
To: oss-security@lists.openwall.com
References: <CAN1eSkue9p8=qkJdEFrczVwc1nfUhG7w6Z2dMHhxHc47T+sv=A@mail.gmail.com>
 <20250620135051.xkt6yzanpy67jeqe@jwilk.net>
In-Reply-To: <20250620135051.xkt6yzanpy67jeqe@jwilk.net>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20250620210452.F39EF41C@notatla.org.uk>
From: lists@notatla.org.uk
Subject: Re: [oss-security] path traversal in tar extract in intel
 cve-bin-tool

> But the custom filter wouldn't be sound even with the typo fixed, 
> because str.startswith() and Path.resolve() are wrong tools for the job.

> Anyway, I suspect that cve-bin-tool's extractors for other file formats 
> are still vulnerable to path traversal, so I wouldn't recommend running 
> it against untrusted files.


`We must first agree that software security is not security
software', writes Gary McGraw in the first chapter ..


http://swsec.com/press/ra-ieeesp.php
