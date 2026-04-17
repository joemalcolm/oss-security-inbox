Received: (qmail 26589 invoked by uid 550); 17 Apr 2026 15:55:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3255 invoked from network); 17 Apr 2026 10:30:18 -0000
Date: Fri, 17 Apr 2026 12:30:04 +0200
From: Matthias Ferdinand <ml.oss-security@mfedv.net>
To: oss-security@lists.openwall.com
Message-ID: <aeILrE9J6sYYPmEh@xoff>
References: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
 <20260410025803.GA20948@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260410025803.GA20948@openwall.com>
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10
 security fixes

On Fri, Apr 10, 2026 at 04:58:03AM +0200, Solar Designer wrote:
> On Wed, Apr 08, 2026 at 04:24:34PM -0700, Alan Coopersmith wrote:
> > https://groups.google.com/g/golang-announce/c/0uYbvbPZRWU announces:
> > >We have just released Go versions 1.26.2 and 1.25.9, minor point releases.
> > >
> > >These releases include 10 security fixes following the security policy:
> 
> This includes 2 issues in the compiler itself, which made some Go
> programs not memory safe:
  ...


I did not see any Linux distribution advisories for compiled Go programs
yet, but some projects using Go have released upates:

  - https://rclone.org/changelog/#v1-73-4-2026-04-08
        Update to go 1.25.9 to fix multiple CVEs

  - https://github.com/grafana/grafana/releases/tag/v12.4.3
        2026-04-14: Go: Update to 1.25.9

I looked at https://github.com/gopasspw/gopass and
https://github.com/restic/restic, but they have not yet issued updated
releases.

Perhaps the message did not spread wide enough. Or are many Go programs
just not affected?


Matthias
