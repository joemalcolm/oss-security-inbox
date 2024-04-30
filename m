Received: (qmail 6117 invoked by uid 550); 30 Apr 2024 20:16:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3170 invoked from network); 30 Apr 2024 19:13:21 -0000
Date: Tue, 30 Apr 2024 12:13:11 -0700
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <16sUYl3YUBJ4EmtQ@aceecat.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20231221143630.GD14101@suse.de>
 <ZjBHOEHylGAaIo57@moon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZjBHOEHylGAaIo57@moon>
Subject: [oss-security] Re: New SMTP smuggling attack

On Mon, Apr 29, 2024 at 08:19:52PM GMT, Mark Esler wrote:

> To mitigate future end-of-data sequence attacks, like SMTP
> Smuggling, MTAs should comply with RFC 5321 section 4.1.1.4 [0] to
> strip control characters other than <SP>, <HT>, <CR>, and <LF> in
> the DATA section of SMTP messages.

[...]

> As per RFC 2119 section 3 [2], the word *SHOULD* implies *MUST*
> unless you have a valid reason not to--which is never the case for
> these _forbidden_ sequences in DATA. This is why RFC 5321 4.1.1.4's
> _SHOULD avoid_ implies _needs to strip_.

I don't see that stripping specifically is implied.

> What are the benefits and risks of stripping ASCII NUL and other
> control characters from SMTP DATA?

What is the benefit of stripping versus the much more natural option
of rejecting such messages?

One possible consequence of passing messages along in an altered form
is that various signatures may break.

-- 
Ian
