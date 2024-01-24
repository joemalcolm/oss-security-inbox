Received: (qmail 1282 invoked by uid 550); 24 Jan 2024 17:50:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19527 invoked from network); 24 Jan 2024 17:37:41 -0000
Date: Wed, 24 Jan 2024 09:39:38 -0800
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <jnc745riho5bck4f24gfjhz755zedqma77hbpdcwn7hchttluu@n6ajzobn5ukx>
Mail-Followup-To: oss-security@lists.openwall.com
References: <Za-XWUEPml2pcATt@kasco.suse.de>
 <20240124084235.360eb42b.hanno@hboeck.de>
 <ZbDH9FfiyKDUFv64@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZbDH9FfiyKDUFv64@suse.com>
Subject: [oss-security] Re: darkhttpd: timing attack and local leak of HTTP basic auth
 credentials

Do not the various implementations of the *ident* protocol (example: oidentd)
rely on this interface? They are often, or always, intentionally configured
to run as nobody or a dedicated UID.

-- 
Ian
