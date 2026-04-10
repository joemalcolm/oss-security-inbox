Received: (qmail 16115 invoked by uid 550); 10 Apr 2026 15:04:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5426 invoked from network); 10 Apr 2026 10:14:38 -0000
Date: Fri, 10 Apr 2026 12:14:28 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20260410101428.GQ4243@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20260407200906.14b9bcc0@riseup.net>
 <addC9yTFAPYQnzpi@eldamar.lan>
 <20260409213126.7a700b69@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260409213126.7a700b69@gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.3+4 (71f3e314) vl-169878 (2026-01-27)
Subject: Re: [oss-security] systemd-journald in systemd 259 does not escape
 characters in emerg messages that are wall'd to other user's terminals

On 2026-04-09 21:31:26 -0400, Aaron Rainbolt wrote:
> On Thu, 9 Apr 2026 08:11:03 +0200
> Salvatore Bonaccorso <carnil@debian.org> wrote:
> 
> > Hi Aaron,
> > 
> > On Tue, Apr 07, 2026 at 08:09:06PM -0400, Aaron Rainbolt wrote:
> > [...]
> > > I discovered this while doing work for the Kicksecure and Whonix
> > > projects. This bug was reported privately to upstream on December
> > > 23, 2025. As per Kicksecure's Vulnerability Disclosure Policy [1],
> > > we're disclosing it publicly on April 7, 2026, 90 days + a 14-day
> > > grace period later. An upstream bug report can be seen at [2].  
> > 
> > JFYI, the reference to the issue: It currently say: "This issue has
> > been deleted.". Is the issue reference correct, was it really deleted
> > or is there a typo?
> 
> The issue reference is correct. systemd upstream didn't agree with
> Kicksecure's vulnerability disclosure policy, and elected to delete the
> bug report for being "irresponsible". I disagree with them, but in any
> event, the email contains all of the useful info that was in the
> upstream bug report.

Note that ForwardToWall=yes can be problematic even if this bug is
fixed, because wall messages may interfere with escape sequences
that are normally sent to the terminal. So I would say that
ForwardToWall=yes should be used only in trusted environments.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
