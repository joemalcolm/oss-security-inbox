X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1981" "Wednesday" "3" "August" "2016" "00:57:25" "+0100" "Dario Bertini" "berdario@gmail.com" "<CAFdyfB2TsH3t=nyMmb42CREXL8wRqZ5yxv=ORyRPKi+-miPY8A@mail.gmail.com>" "46" "[oss-security] Re: CVE Request: CSRF in Grails console" nil nil nil "8" "2016080223:57:25" "[oss-security] Re: CVE Request: CSRF in Grails console" (number mark "U       berdario@gma Aug  3   46/1981  " thread-indent "\"[oss-security] Re: CVE Request: CSRF in Grails console\"\n") "<20160802224316.0A523B2E007@smtpvbsrv1.mitre.org>" ("<CAFdyfB2D-63JUZbO_tU8sx2_pbS1e30cBemu81PNKABufdogpg@mail.gmail.com>" "<20160802224316.0A523B2E007@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3408 invoked by uid 550); 3 Aug 2016 01:24:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12048 invoked from network); 2 Aug 2016 23:57:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1MunjiqzKpL+tBeEk7MpNftqS8p2QoYEZ21KGstc7/A=;
        b=uiaVvyvJYKFkc7qM3GC9Z/yzlFRcq00B0YcU4pE5K8k80yACRHKB5ZMpv9eNeEyHlM
         YkMFw3I7bPZlk5gXlxgBsgykU22u8vV63OLCKkILie6zZ46eXKZh2dbv07jmS79lBrAy
         dp6r3u1qaD+nrkEw7x6t4+e1pGyxFcvS2VUsuTc57XI5BaUoYB+eUFz1l8fDdqoV8Yac
         CFwQkfx4HizKk2dS3p5ZKNeUzu3Ni6WqREyh5d6aFa708hxrazCTfBhgCF6NExJcfwud
         b8FfXaeziTawk/6RdZd5FoaLGK9cVDZLhQVpBpq9rEjbdU9Fh+4Q1B7Tqt0siJidkvjz
         l9Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1MunjiqzKpL+tBeEk7MpNftqS8p2QoYEZ21KGstc7/A=;
        b=lIQrj7VTIQ8mcUwwvxAFKS06HSzpxiDJ/clDIm7KzNCr1k+jfhThrCYVEgafUdDGOU
         wWLrk216jQuJTnef98gW0egdK71rSXYoDHBLhEKlW3sykN1VumjWPpNLcWGMCDgwFChO
         BHbg7SbGDGzoA4LppuPmleJWEB17MobpaQjmX2Fv2PDKm5/rU5hIEwE1gPTZhkgFqjp6
         CQlCZSPZ2x0cNCtAG9Cg9PtqJxlqFAHAucv3OyQuEwqBszfm5LcTW+x8kOs2wgsGhshk
         7c+oTY5OGoIL4Af2GRn5Km8ULZ/XkHm/hMq4fxm4ymb1vM6EunKmPi88V/wu8IAYWXF7
         bt3Q==
X-Gm-Message-State: AEkoouv6fACd6MF9vuUeEfSj6eGgWcoXJ2Z8NbVFoBIE3wzfLXKhHwQPC1ib/WQGoHXm76IUHiyWyBDCPT1USg==
X-Received: by 10.31.78.6 with SMTP id c6mr31119462vkb.41.1470182246641; Tue,
 02 Aug 2016 16:57:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160802224316.0A523B2E007@smtpvbsrv1.mitre.org>
References: <CAFdyfB2D-63JUZbO_tU8sx2_pbS1e30cBemu81PNKABufdogpg@mail.gmail.com>
 <20160802224316.0A523B2E007@smtpvbsrv1.mitre.org>
From: Dario Bertini <berdario@gmail.com>
Date: Wed, 3 Aug 2016 00:57:25 +0100
Message-ID: <CAFdyfB2TsH3t=nyMmb42CREXL8wRqZ5yxv=ORyRPKi+-miPY8A@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE Request: CSRF in Grails console

Thanks

On Tue, Aug 2, 2016 at 11:43 PM,  <cve-assign@mitre.org> wrote:
> It is possible that a behavior like this could have its own CVE ID if
> it is undocumented or interacts incorrectly with run-app. For example,
> http://docs.grails.org/1.3.9/guide/single.html#6.4.5%20Mapping%20to%20HTTP%20methods
> says "the HTTP method (GET, POST, PUT or DELETE)." Do you mean, for
> example, that the OPTIONS or TRACE method can allow access, but the
> documentation suggests that only GET, POST, PUT, and DELETE need to be
> anticipated?

Nothing that fancy (I actually forgot about the HTTP method mapping
you linked to...)

The template code dropped by `grails create-app` is the same one you
can see here: http://docs.grails.org/3.1.1/ref/Plug-ins/URL%20mappings.html

```
"/$controller/$action?/$id?"{
    constraints {
        // apply constraints here
    }
}
```

This code is then kept by Grails programmer, who only rarely add more
constrained mappings to this file, and instead relying on "convention
over configuration". That is: they add controllers, and every
non-private Closure/method defined in such controllers is accessible
via any HTTP method, unless the snippet above is not removed.

You can easily find demonstrations that this happens in real code:

The same Grails Console plugin
https://github.com/sheehan/grails-console/blob/88b1bb2/grails3/app/grails-app/controllers/UrlMappings.groovy
(note that in fact their fix requires a CSRF token even for GET requests)

The reference app for the Grails in Action book:
https://github.com/pledbrook/graina/blob/fe1feca/hubbub/grails-app/conf/UrlMappings.groovy#L16-L20

( There are even people that proposed custom annotations to provide a
mechanism to constrain the methods closer to the actual
method/function definition:
http://burtbeckwith.com/blog/?p=80 ... I'd say that this is a simptom
of how there are several ways to constrain HTTP methods for each
controller, and yet none of these is truly used universally)
