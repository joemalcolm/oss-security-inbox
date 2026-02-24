Received: (qmail 29893 invoked by uid 550); 24 Feb 2026 20:34:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25786 invoked from network); 24 Feb 2026 20:33:52 -0000
Date: Tue, 24 Feb 2026 21:33:37 +0100
From: Solar Designer <solar@openwall.com>
To: kf503bla@duck.com
Cc: oss-security@lists.openwall.com,
	"bug-inetutils@gnu.org" <bug-inetutils@gnu.org>,
	"ron.benyizhak@safebreach.com" <ron.benyizhak@safebreach.com>,
	"simon@josefsson.org" <simon@josefsson.org>,
	"auerswal@unix-ag.uni-kl.de" <auerswal@unix-ag.uni-kl.de>,
	"justin.swartz@risingedge.co.za" <justin.swartz@risingedge.co.za>
Message-ID: <20260224203337.GA17345@openwall.com>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za> <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com> <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Telnetd Vulnerability Report

On Tue, Feb 24, 2026 at 05:05:58AM -0500, kf503bla@duck.com wrote:
> Who uses telnet anyway? It's deprecated. Everyone uses ssh for any kind of remote access.

Indeed.  Yet:

Quite many people surely do still use a telnet client to access various
older/smaller devices, as well as online resources - in particular, in
the field of astronomy, as it was brought up in last month's discussion
elsewhere.  Also online retro computers and BBSes.

This means that some kind of telnet server is also still in use on those
devices and in those places.  Probably in most of those cases it is not
one from InetUtils, but who knows.  I suppose some astronomy site may
have migrated their telnet gateway to a Debian or Ubuntu system.

Alexander
