Received: (qmail 22062 invoked by uid 550); 1 Feb 2024 18:09:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3309 invoked from network); 1 Feb 2024 17:43:19 -0000
Date: Thu, 1 Feb 2024 09:45:36 -0800
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <r2yfkmeszb5nz37jepgatysvm3ajua3kwte72sfzdicffh5vze@oizk252b5l77>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20240201123100.42ba1334.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240201123100.42ba1334.hanno@hboeck.de>
Subject: [oss-security] Re: Python standard library defaults to insecure TLS for mail
 protocols

On Thu, Feb 01, 2024 at 12:31:00PM +0100, Hanno Böck wrote:

> Also relevant is RFC 8314, which contains guidelines for TLS
> connections in email protocols [5]. ("MUAs MUST validate TLS server
> certificates [...]") It targets client software, but I believe it is
> reasonable to apply the same standards to client APIs.

Relaying *MTAs* do not usually verify the certificate of the server
they connect to. When they do, it creates problems because MTA
certificates are very often self-signed. IIRC Yahoo relays in
particular used to have this problem (or still do?)

It is true that MTAs are not usually written in Python :-) So maybe
the proposal is OK. But there's a general point to note here, namely
not all protocols are the same wrt TLS.

-- 
Ian
