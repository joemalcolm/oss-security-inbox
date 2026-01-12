Received: (qmail 30142 invoked by uid 550); 12 Jan 2026 15:01:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19639 invoked from network); 12 Jan 2026 14:26:09 -0000
Date: Mon, 12 Jan 2026 15:25:59 +0100
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20260112142559.GA974242@joooj.vinc17.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com>
 <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.16+96 (33c58fb2) vl-169878 (2026-01-07)
Subject: Re: [oss-security] Null Pointer Dereference in HarfBuzz

On 2026-01-11 21:09:55 -0600, Jacob Bachmeyer wrote:
> Aside from the dubious patch, this is a good example of a legitimate bug but
> bogus CVE:  how exactly does an attacker trigger this without either having
> *already* completed a DoS attack (consuming all memory) or achieved
> arbitrary code execution (altering the allocator to return NULL even though
> memory is available)?
> 
> In short, this is a crash bug, but not a security issue.  This is different
> from (for example) a parser bug that results in NULL being dereferenced if
> crafted input is processed.

Note that according to the C standard, dereferencing a null pointer
is undefined behavior, not necessarily a crash. This means that
due to compiler optimizations, unexpected code might be run with
uncontrollable behavior. And it may be difficult to prove that the
code is actually safe despite the optimizations.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
