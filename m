Received: (qmail 17524 invoked by uid 550); 7 Aug 2022 13:48:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10152 invoked from network); 7 Aug 2022 10:41:25 -0000
Date: Sun, 7 Aug 2022 11:41:12 +0100
From: Stuart Henderson <sthen@openbsd.org>
To: oss-security@lists.openwall.com
Message-ID: <Yu+WyB/EKZ9m2hO2@bamboo.spacehopper.org>
References: <2dc37111-fd35-e10e-0162-1bdad2e80f5e@vulndisco.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2dc37111-fd35-e10e-0162-1bdad2e80f5e@vulndisco.cc>
Subject: Re: [oss-security] Exim < 4.95 heap overflow

On 2022/08/06 22:46, Evgeny Legerov wrote:
> Hi,
> 
> 
> Here is another bug which has been silently fixed in Exim.
> 
> It has not been recognized as a security issue, many distros still don't
> have this patch.
> 
> Original report + patch  is here -
> https://github.com/Exim/exim/commit/d4bc023436e4cce7c23c5f8bb5199e178b4cc743
> 
> Analysis of the bug  - https://github.com/ivd38/exim_overflow
> 
> I don't post here because it is huge snippet of code.

As a reader, I would much rather have a self-contained list post with a huge
snippet of code, than a link to an external source. But in this case it isn't
huge at all; the entire contents of https://github.com/ivd38/exim_overflow
(README.md, exim.conf, asan.log) are certainly short enough for a list post.

