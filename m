Received: (qmail 14101 invoked by uid 550); 2 Feb 2024 20:55:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7443 invoked from network); 2 Feb 2024 20:28:03 -0000
Date: Fri, 2 Feb 2024 12:30:22 -0800
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <h6fanw237osiahbsep54i434unwngcsp4yd3kfapm2oyirwc5h@gs3lsdmtnonm>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20240201123100.42ba1334.hanno@hboeck.de>
 <r2yfkmeszb5nz37jepgatysvm3ajua3kwte72sfzdicffh5vze@oizk252b5l77>
 <20240201212715.67677c9a.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240201212715.67677c9a.hanno@hboeck.de>
Subject: [oss-security] Re: Python standard library defaults to insecure TLS for mail
 protocols

On Thu, Feb 01, 2024 at 09:27:15PM +0100, Hanno Böck wrote:

> > Relaying *MTAs* do not usually verify the certificate of the
> > server they connect to.

> Even that isn't true any more in 2024. The largest mail providers
> (and plenty of small ones) all support MTA-STS. So in most cases,
> certificate validity and hostnames are checked.

> > When they do, it creates problems because MTA certificates are
> > very often self-signed. IIRC Yahoo relays in particular used to
> > have this problem (or still do?)

> Doubtful:
> host -t txt _mta-sts.yahoo.com
> _mta-sts.yahoo.com descriptive text "v=STSv1; id=20161109010200Z;"

> If they had invalid certs, they wouldn't receive any mails from
> MTA-STS supporting senders. I think someone would've noticed.

I see little point in re-litigating the rest of the argument, but I
should note that I meant this the other way. Yahoo used to be the one
major *sender* provider that checked the recipient certs, and when it
failed it fell back to plaintext.

-- 
Ian
