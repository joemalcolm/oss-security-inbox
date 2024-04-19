Received: (qmail 32575 invoked by uid 550); 19 Apr 2024 22:58:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32399 invoked from network); 19 Apr 2024 19:01:45 -0000
Date: Fri, 19 Apr 2024 12:01:36 -0700
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <Hz11pVeI7utfT3Od@aceecat.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20240414190855.GA12716@openwall.com>
 <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com>
Subject: [oss-security] Re: Linux: Disabling network namespaces

On Wed, Apr 17, 2024 at 09:52:10AM GMT, Georgia Garcia wrote:

> I just wanted to add that in the Ubuntu Noble Numbat release we are
> using AppArmor to restrict unprivileged user namespaces.

> Applications that don't have an AppArmor profile will use a default
> profile which denies the use of capabilities within the user
> namespace.  Applications that need to use capabilities will have to
> be confined by a profile. Since we understand that creating an
> AppArmor profile might not be a trivial task for large programs, we
> introduced the "unconfined" flag which makes the profile act as if
> it were unconfined from the perspective of AppArmor, allowing all
> operations.

> There are more details here:

> https://discourse.ubuntu.com/t/noble-numbat-release-notes/39890#unprivileged-user-namespace-restrictions-13

I wonder if this (at least the kernel part of it) is already in the
latest PopOS rolling updates? I see some nodes in /proc/sys/kernel
that look very related.

-- 
Ian
