X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2547" "Saturday" "13" "June" "2015" "23:27:43" "+1200" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3Canc5UK9Fv+622LZSiksq7dWnLfNQ1ba8cAyt=14j+bP1aA@mail.gmail.com>" "54" "[oss-security] Re: CVE requests / Advisory: Codestyling Localization (Wordpress plugin) - multiple RCE via CSRF, multiple XSS" nil nil nil "6" "2015061311:27:43" "[oss-security] Re: CVE requests / Advisory: Codestyling Localization (Wordpress plugin) - multiple RCE via CSRF, multiple XSS" (number mark "        mattd@bugfuz Jun 13   54/2547  " thread-indent "\"[oss-security] Re: CVE requests / Advisory: Codestyling Localization (Wordpress plugin) - multiple RCE via CSRF, multiple XSS\"\n") "<20150604205206.753EF8BC034@smtpvmsrv1.mitre.org>" ("<CAD3CanenHhNaYu6koiNheG0w=n31ybLFw0hZt+bZar1nkkBgfA@mail.gmail.com>" "<20150604205206.753EF8BC034@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22301 invoked by uid 550); 13 Jun 2015 11:27:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22282 invoked from network); 13 Jun 2015 11:27:54 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=tNFXTv2CyuIsNLHhAu/40MjdkIDoDgUs3zWDAs2q78c=;
        b=A+B0hRrtkEkeFDWhOdhVC95+Q+8+3pGouTDYWTWKYfnL6dLMjseo7o/cRlTl37y+ki
         hl7wpJr71WRnm00N8L4rk9KlZZYO1lGkijCF1SdxiMVeDAGLBsFdvyN6tdLnzDTV5PSB
         14VenVcToA9RlVVm3EKuU63p/D+1jiAkwPSQphbUGRjR8Wqf3vcnHcBg3CBm+eJ2iZMc
         WDD5X7ymymL11raGILpWJqhRsBfDNcn11+Dv/Nw9pAqNstSkXJIeijLdyVKsg7CDXn55
         ZtKQvXXG/Us1EmS6a6AuPFL9Cba5Nf02I1OPVgMLD/fgKthRk8VWWc59+SPF1/J9xyiu
         Zg1w==
X-Gm-Message-State: ALoCoQm/zuc6Y/T+Q28t9o2LNyCK8bH6AUWUQqw8oOIhgh0cy/zbAx+Tuo++mi1tcXTEJUrXGz8j
MIME-Version: 1.0
X-Received: by 10.180.82.6 with SMTP id e6mr15229520wiy.84.1434194863178; Sat,
 13 Jun 2015 04:27:43 -0700 (PDT)
In-Reply-To: <20150604205206.753EF8BC034@smtpvmsrv1.mitre.org>
References: <CAD3CanenHhNaYu6koiNheG0w=n31ybLFw0hZt+bZar1nkkBgfA@mail.gmail.com>
	<20150604205206.753EF8BC034@smtpvmsrv1.mitre.org>
Message-ID: <CAD3Canc5UK9Fv+622LZSiksq7dWnLfNQ1ba8cAyt=14j+bP1aA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Sat, 13 Jun 2015 23:27:43 +1200
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests / Advisory: Codestyling Localization (Wordpress
 plugin) - multiple RCE via CSRF, multiple XSS
To: cve-assign@mitre.org

On 5 June 2015 at 08:52,  <cve-assign@mitre.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>> The plugin contains multiple AJAX actions that, while having the
>> necessary permission checks, do not have anti-CSRF protection
>
> It appears that the main vulnerability you are reporting is the
> multiple CSRF. Use CVE-2015-4179.
>
> In reading your advisory, we weren't able to determine if there are
> any realistic scenarios in which an authenticated user would
> intentionally use csp_po_scan_source_file or csp_po_save_catalog_entry
> for RCE (i.e., scenarios that do not involve CSRF) and thereby obtain
> additional access to the server machine. We think you may mean
> scenarios in which the authenticated user has the manage_options
> capability but not the edit_plugins capability.

The manage_options capability is required to trigger any of the
RCE'able actions, hence normal users (without the capability) cannot
exploit them (unless they target an administrator with a CSRF attack,
as described in the advisory.)

However, I hadn't considered users with the manage_options capability
exploiting the RCE'able actions themselves. So yes, I suppose
Administrators could use this to escalate to Super Administrator on
multisite WordPress installations (multisite Super Administrators get
extra capabilities compared to normal Administrators; see
<https://codex.wordpress.org/Roles_and_Capabilities#Super_Admin> and
<https://codex.wordpress.org/Roles_and_Capabilities#Additional_Admin_Capabilities>)

> (As always, to obtain multiple CVE IDs for a report, it is useful to
> describe all of the substantially distinct scenarios, not only the
> scenarios in which risk is greatest.)
>
> Also, we did not understand whether the "Multiple XSS in various AJAX
> actions ... reflected unescaped POST parameters in certain AJAX
> actions' responses" issue is independently relevant. Do you mean that
> there is unescaped reflection regardless of whether the AJAX action is
> authorized?

No, the actions have appropriate authorisation checks and will not be
vulnerable to XSS if the caller is unauthorised.

> More specifically, if all of the CSRF issues in the plugin
> were fixed in a normal way, would unauthenticated attackers be able to
> conduct XSS attacks by hosting JavaScript code that forces an
> administrator's browser to make a POST request without a nonce?

Assuming that the usual WordPress anti-CSRF nonces were added in the
appropriate locations, i.e., to the csp_po_check_security function,
then no.

- Matthew
