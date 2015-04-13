X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1750" "Monday" "13" "April" "2015" "20:02:40" "+1200" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3CaneMq33seETYz_2OkntNNBgLkas438ULApSOCbGzUxHkNw@mail.gmail.com>" "42" "[oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6" nil nil nil "4" "2015041308:02:40" "[oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6" (number mark "        mattd@bugfuz Apr 13   42/1750  " thread-indent "\"[oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6\"\n") "<20150413062510.A338D1BE0A6@smtpvbsrv1.mitre.org>" ("<CAD3Cand-BMAZvKPWt7VORYxzZGemmYPqdKmp2F-m1b2izT4_6g@mail.gmail.com>" "<20150413062510.A338D1BE0A6@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9782 invoked by uid 550); 13 Apr 2015 08:02:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9763 invoked from network); 13 Apr 2015 08:02:51 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=PA2cjOMxMOtNP7Ag6fUar2peJhDI24KGT2V1RiIseIA=;
        b=LByhSni1l1kf/bI/2aC0w+P1JQ5C4SNXXhvKeiElTi6847WS8MXuL8aqJiLKTkOE5e
         ak4yD4x67lENLXZv/zerQqaTmyUZ3NheT/8ZqFO84AHZTHvTxrx55uol9F4S4ELdd07c
         B7KkNdi5CLawhXS8qNI/WC5Snxpyp0/H/j5nxWvsF/oidbTo4GAgYuBPIYFszFiaaenS
         Ifxq9KORh4zDfvKDfhFnacfrjVZA6xNFEIw/3JVp6vM3x1CF1BJo6ZyCEcNKiFlwfOvT
         3spKVqIWHFsGwNzrxQIFxXbTtAU33vv8wLulZTAi+jCiUsC8GfruTJ8VHa43Rg/W3VkX
         k3Ew==
X-Gm-Message-State: ALoCoQllm/5176L0e1dTiRvz5+yQPMzOosWJOSzVI+yUxJ0kvTgEwzz/y3cUw2Iwskc+9VPUS9sr
MIME-Version: 1.0
X-Received: by 10.180.96.200 with SMTP id du8mr19692963wib.54.1428912160336;
 Mon, 13 Apr 2015 01:02:40 -0700 (PDT)
In-Reply-To: <20150413062510.A338D1BE0A6@smtpvbsrv1.mitre.org>
References: <CAD3Cand-BMAZvKPWt7VORYxzZGemmYPqdKmp2F-m1b2izT4_6g@mail.gmail.com>
	<20150413062510.A338D1BE0A6@smtpvbsrv1.mitre.org>
Message-ID: <CAD3CaneMq33seETYz_2OkntNNBgLkas438ULApSOCbGzUxHkNw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Mon, 13 Apr 2015 20:02:40 +1200
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin)
 1.0.1 - 1.1.6
To: cve-assign@mitre.org

On 13 April 2015 at 18:25,  <cve-assign@mitre.org> wrote:
>> I'd like to request a CVE ID for this issue. This is the first such
>> request; this message serves as an advisory as well.
>>
>> Affected software: Floating Social Bar (Wordpress plugin)
>> Affected versions: 1.0.1 - 1.1.6
>> Website: https://wordpress.org/plugins/floating-social-bar/
>>
>> Description: One of the plugin's unauthenticated AJAX action handlers
>> is vulnerable to a stored cross-site scripting vulnerability. By
>> invoking the action with certain parameters, it is possible for
>> unauthenticated attackers to force the persistent injection of
>> arbitrary script across the site's post pages.
>>
>> Fixed version: 1.1.7
>> Fix: https://plugins.trac.wordpress.org/changeset/1129648/floating-social-bar/trunk
>> Changelog: https://plugins.trac.wordpress.org/changeset/1129648/floating-social-bar/trunk#file5
>
> Use CVE-2015-3299 for the specific issue in your "Description" section
> above. It seems conceivable that 1129648 also fixed something else,
> e.g.,
>
>   1. Maybe the
>      "-     add_action( 'wp_ajax_nopriv_fsb_save_order', array( $this, 'save_order' ) );"
>
>      code change means that wp_ajax_nopriv_fsb_save_order allowed
>      bypassing intended access control, even if the attacker did not
>      supply an XSS payload.

Yes. It wasn't intended for non-administrators to be able to adjust
the services by executing the action.

>
>   2. Maybe the patched code can help to prevent a CSRF attack against
>      an authenticated action handler.

Again, yes. Administrators could be forced to execute the action with
an attacker's parameters via a CSRF attack. Nonces have been added to
stop this.

>
> If so, then additional CVE IDs would be needed.
