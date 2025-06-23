Received: (qmail 3934 invoked by uid 550); 23 Jun 2025 23:45:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3645 invoked from network); 23 Jun 2025 23:45:35 -0000
Date: Tue, 24 Jun 2025 01:45:29 +0200
From: Solar Designer <solar@openwall.com>
To: grape mingijung <mingijung.grape@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20250623234529.GA10997@openwall.com>
References: <CAFyT70jJBgFDN1nreS1D6xp5QdXjJ8aLiJSbGfN8PTo5F1tChw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFyT70jJBgFDN1nreS1D6xp5QdXjJ8aLiJSbGfN8PTo5F1tChw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] xdg-open bypassing SameSite=Strict

Hello Mingi Jung,

Thank you for your report and handling of this issue.

On Mon, Jun 23, 2025 at 08:59:46PM +0900, grape mingijung wrote:
> During discussions with several Linux distro security teams, the following
> suggestions were raised:
> 
>    1. Introduce an "untrusted" mode or flag in browser CLI tools for
>    opening external URLs
>    2. Extend xdg-open to support passing this "untrusted" flag or context
>    to the browser
>    3. Modify desktop environments or applications to invoke xdg-open with
>    the "untrusted" option when appropriate
> 
> In summary, it was suggested that the *browser should be updated first*,
> followed by gradual support at the xdg-open and system levels.
> 
> Accordingly, the issue has been forwarded to *browser vendors*, who are
> currently reviewing it and exploring potential fixes.

What about having browser CLI tools instead treat URLs as untrusted by
default?  So in step 1, a "trusted" mode or flag could be introduced (if
needed for something else), and steps 2 and 3 would be unneeded.  Would
this cause too much breakage?  What is expected to break?

Alexander
