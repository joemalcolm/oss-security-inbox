Received: (qmail 9707 invoked by uid 550); 15 Apr 2023 12:32:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9403 invoked from network); 15 Apr 2023 12:31:23 -0000
Date: Sat, 15 Apr 2023 14:31:18 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20230415123118.GA10525@openwall.com>
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com> <87y1mwd1xm.fsf@gentoo.org> <CAGUWgD8297SAEoSS_hXGzk+VKQ_bE_K5CQeGrA26x0P=xouApQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGUWgD8297SAEoSS_hXGzk+VKQ_bE_K5CQeGrA26x0P=xouApQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] ncurses fixes upstream

On Sat, Apr 15, 2023 at 09:33:24AM +0300, Georgi Guninski wrote:
> Isn't MicroSoft member of linux distros mailing list [0], which
> purpose is exactly quietly trading 0days [1]?
> 
> Does the OP with m$ email address realize this?
> 
> [0] https://oss-security.openwall.org/wiki/mailing-lists/distros
> [1] https://seclists.org/oss-sec/2019/q3/19
> Re: linux-distros membership application - Microsoft

The (linux-)distros lists are meant for handling of embargoed issues
prior to their public disclosure and in cases where such private
handling is expected to help.  In this case, the issue was already
semi-public (via the fixes and the NEWS file) and I wouldn't expect
private handling to help more than public does.  Every distro present on
(linux-)distros is supposed to also be present on oss-security.  So in
my opinion Jonathan did the right thing of posting this to oss-security
right away.

Also, in general, choosing whether to post to linux-distros, to distros,
or to oss-security shouldn't be related to whether one is a member of
(linux-)distros or not.  Anyone can report an issue to any of these
lists as appropriate for the given issue and its current status.

Alexander
