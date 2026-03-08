Received: (qmail 20404 invoked by uid 550); 8 Mar 2026 10:02:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19831 invoked from network); 8 Mar 2026 10:02:25 -0000
Date: Sun, 8 Mar 2026 11:02:22 +0100
From: Solar Designer <solar@openwall.com>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: oss-security@lists.openwall.com, bug-inetutils@gnu.org,
	collin.funk1@gmail.com, simon@josefsson.org,
	auerswal@unix-ag.uni-kl.de, ron.benyizhak@safebreach.com
Message-ID: <20260308100222.GA29407@openwall.com>
References: <20260224011702.27987-1-justin.swartz@risingedge.co.za> <20260224052943.GA13045@openwall.com> <20260224064351.GA14779@openwall.com> <20260307002011.18141-1-justin.swartz@risingedge.co.za> <20260308025745.GA24992@openwall.com> <fbfd407edbca76995b86ec45e9cf935d@risingedge.co.za> <20260308073422.20218-1-justin.swartz@risingedge.co.za> <20260308080557.GA27619@openwall.com> <0940bd56c70e5d93bc32024cca2b2ac9@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0940bd56c70e5d93bc32024cca2b2ac9@risingedge.co.za>
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Re: Telnetd Vulnerability Report

On Sun, Mar 08, 2026 at 11:41:47AM +0200, Justin Swartz wrote:
> On 2026-03-08 10:05, Solar Designer wrote:
> >On Sun, Mar 08, 2026 at 09:34:22AM +0200, Justin Swartz wrote:
> >>+is_env_var_allowed (const char *var, const char *val)
> >>+{
> >>+  const char * const *p;
> >
> >This second const here looks wrong as you're changing the value of this
> >pointer.  I suggested this syntax only for the array, where you used it
> >correctly.
> 
> That pointer isn't constant.

Oh, you're right, I was wrong.  It's a non-const pointer to a const
pointer to a const string.  Which is what we need here.

It's still uncommon in projects to const'ify string arrays like that,
but I think we should start doing that more.  So I hope this little
digression we had is helpful beyond these telnetd patches.

Thank you for posting the tests.

Alexander
