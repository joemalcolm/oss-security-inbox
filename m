Received: (qmail 18246 invoked by uid 550); 21 Dec 2023 14:55:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9328 invoked from network); 21 Dec 2023 14:46:26 -0000
Date: Thu, 21 Dec 2023 14:46:56 +0000
From: Claus Assmann <ml+oss@esmtp.org>
To: oss-security@lists.openwall.com
Message-ID: <20231221144656.GA40693@veps.esmtp.org>
References: <20231221143630.GD14101@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231221143630.GD14101@suse.de>
Subject: [oss-security] Re: New SMTP smuggling attack

Just for completeness:
sendmail 8.18.0.2 has options to handle this too, e.g.,
	Accept only CR LF . CR LF as end of an SMTP message as
		required by the RFCs when the new srv_features
		option 'o' is used.

And for those who read the source code there's also an FFR:
	/* enable checking for "bare LF" in message */
	"_FFR_BARE_LF",

