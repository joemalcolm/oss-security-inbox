Received: (qmail 32113 invoked by uid 550); 2 Aug 2024 14:55:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26178 invoked from network); 2 Aug 2024 14:53:38 -0000
Date: Fri, 2 Aug 2024 16:53:38 +0200
From: Solar Designer <solar@openwall.com>
To: Dane Bouchie <dbouchie@iradimed.com>
Cc: Andri Yngvason <andri@yngvason.is>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	Travis Wise <travis@wavesquared.com>,
	"security@raspberrypi.com" <security@raspberrypi.com>,
	Simon Long <simon@raspberrypi.com>,
	Moritz M??hlenhoff <jmm@inutil.org>,
	Salvatore Bonaccorso <carnil@debian.org>
Message-ID: <20240802145338.GA12405@openwall.com>
References: <CAFNQBQwnnA_=sZCvYf=sRzz2SXfqJB5_JEFYjCC+pcGekN9WFw@mail.gmail.com> <20240802143913.GA11135@openwall.com> <SA1PR22MB2978E752B5A2B186F0B4D9B9B5B32@SA1PR22MB2978.namprd22.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SA1PR22MB2978E752B5A2B186F0B4D9B9B5B32@SA1PR22MB2978.namprd22.prod.outlook.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Neat VNC Security Vulnerability

On Fri, Aug 02, 2024 at 02:41:18PM +0000, Dane Bouchie wrote:
> The client chooses the security type, so they can pass in "None" to the switch statement. is_allowed_security_type() now prevents that.

Oh, so was the issue a trivial authentication bypass?  Evidently, logic
errors like this are easy to miss in plain sight.

	switch (type) {
	case RFB_SECURITY_TYPE_NONE:
		security_handshake_ok(client, NULL);
		client->state = VNC_CLIENT_STATE_WAITING_FOR_INIT;
		break;

Should the above RFB_SECURITY_TYPE_NONE support continue to exist in the
code at all, if RFB_SECURITY_TYPE_NONE is never added to the allowed
security types array that the code now pre-checks against?  Maybe it
should be #if 0'ed out, leaving it only as an example for debugging?

Thank you for the extremely prompt response.

Alexander
