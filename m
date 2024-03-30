Received: (qmail 7796 invoked by uid 550); 30 Mar 2024 16:25:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5739 invoked from network); 30 Mar 2024 16:25:12 -0000
Date: Sat, 30 Mar 2024 17:24:59 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240330162459.GA10648@openwall.com>
References: <uu7da3$87n$1@ciao.gmane.io> <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de> <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com> <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com> <uu7k2m$61a$1@ciao.gmane.io> <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com> <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org> <87cyrbzw2z.fsf@daath.pimeys.fr> <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

On Sat, Mar 30, 2024 at 11:32:54AM -0400, Jeffrey Walton wrote:
> Lasse published a statement at <https://tukaani.org/xz-backdoor/>.

Quoting here for archival, and ease and safety of access:

---
XZ Utils backdoor
Lasse Collin

This page is short for now but it will get updated as I learn more about the incident. Most likely it will be during the first week of April 2024.

The Git repositories of XZ projects are on git.tukaani.org.

xz.tukaani.org DNS name (CNAME) has been removed. The XZ projects currently don't have a home page. This will be fixed in a few days.

Facts

- CVE-2024-3094

- XZ Utils 5.6.0 and 5.6.1 release tarballs contain a backdoor. These tarballs were created and signed by Jia Tan.

- Tarballs created by Jia Tan were signed by him. Any tarballs signed by me were created by me.

- GitHub accounts of both me (Larhzu) and Jia Tan are suspended.

- xz.tukaani.org (DNS CNAME) was hosted on GitHub pages and thus is down too. It might be moved to back to the main tukaani.org domain in the near future.

- Only I have had access to the main tukaani.org website, git.tukaani.org repositories, and related files. Jia Tan only had access to things hosted on GitHub, including xz.tukaani.org subdomain (and only that subdomain).

Links

- Details by Andres Freund
https://www.openwall.com/lists/oss-security/2024/03/29/4

- FAQ by thesamesam
https://gist.github.com/thesamesam/223949d5a074ebc3dce9ee78baad9e27

- Gentoo bug 928134
https://bugs.gentoo.org/928134

- Debian bug 1068024
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1068024
---

Alexander
