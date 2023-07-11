Received: (qmail 19634 invoked by uid 550); 11 Jul 2023 15:36:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16318 invoked from network); 11 Jul 2023 15:36:10 -0000
Date: Tue, 11 Jul 2023 17:36:03 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Brandon Perry <bperry.volatile@gmail.com>,
	Brahma Reddy Battula <brahma@apache.org>, Jecki Go <jecgo@visa.com>
Message-ID: <20230711153603.GA12449@openwall.com>
References: <f61029a1-f4dc-8fb3-a9c8-444901495532@apache.org> <CAOJKFBBeRpoYjwUsJNH=c5aAQ+H=rmGPiTUQ+qB7rZ0J1Qt+rQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOJKFBBeRpoYjwUsJNH=c5aAQ+H=rmGPiTUQ+qB7rZ0J1Qt+rQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2022-42009: Apache Ambari: A malicious authenticated user can remotely execute arbitrary code in the context of the application.

On Mon, Jul 10, 2023 at 10:08:22AM -0500, Brandon Perry wrote:
> Do you have an example proof of concept or a bug link for this?

Added CC's.
Brahma or Jecki, can you address Brandon's question above, please?

Alexander

> On Mon, Jul 10, 2023 at 10:06???AM Brahma Reddy Battula <brahma@apache.org> wrote:
> > Affected versions:
> >
> > - Apache Ambari 2.7.0 through 2.7.6
> >
> > Description:
> >
> > SpringEL injection in the server agent in Apache Ambari version 2.7.0 to
> > 2.7.6 allows a malicious authenticated user to execute arbitrary code
> > remotely. Users are recommended to upgrade to 2.7.7.
> >
> > Credit:
> >
> > Jecki Go (jecgo@visa.com) (finder)
> >
> > References:
> >
> > https://ambari.apache.org/
> > https://www.cve.org/CVERecord?id=CVE-2022-42009
