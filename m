X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4288" "Thursday" "27" "October" "2016" "16:24:35" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3orM88PNLeyyNO41yD+ScJyi5ys4_ZeNAEY+qR+LP6Tw@mail.gmail.com>" "117" "Re: [oss-security] [OSSN-0076] Glance Image service v1 and v2 api image-create vulnerability" nil nil nil "10" "2016102722:24:35" "[oss-security] [OSSN-0076] Glance Image service v1 and v2 api image-create vulnerability" (number mark "U       kseifried@re Oct 27  117/4288  " thread-indent "\"Re: [oss-security] [OSSN-0076] Glance Image service v1 and v2 api image-create vulnerability\"\n") "<00ce3a12-88cc-5727-5ee1-ff13b8748a3f@redhat.com>" ("<00ce3a12-88cc-5727-5ee1-ff13b8748a3f@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24151 invoked by uid 550); 27 Oct 2016 22:24:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24084 invoked from network); 27 Oct 2016 22:24:48 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xMyWQ7ooLvj2RhNLE1BUbttHXICE3+b16bnm6fut6Uo=;
        b=mC95Il/SmOaBe0LEGFNTNkOb65CgNkX4U1yjbtJkJ1YWax6GJSg2AS0XcxC16BXyC4
         FvuvNLUBG+LsuNUS5uoV5boUV7T3ht3lkponvK9Kv8OWrHIa38JULeVE5sk4HRCXH+O3
         rURSXZwFyOkXLE/1jslRhwk1tPismdD0peiMDTO//nQOyhhOtBRpgJk4vNcLTs1Px1qS
         PazbgO+rHVKtBuzF2HQ1Di35AZ0q+yKKnLXk5TY7H8fpTg6THDJqYKsvlvEEjwHRxy0J
         0CkqW9C2ABj2J845HkB9ILqFAuc4yB7qMSa1tHvS++J4NrdKyrdy9ga3sGxMmP7a24BU
         1qgw==
X-Gm-Message-State: ABUngvdyHIVgTY2585oPm8qhrVLaGiBoakAiZkbuc5OQ17VTGpTGQ8xS8bGsrXfjiLNLP6NC9WQeC+ScOOe61vzp
X-Received: by 10.157.0.39 with SMTP id 36mr7782336ota.227.1477607076143; Thu,
 27 Oct 2016 15:24:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <00ce3a12-88cc-5727-5ee1-ff13b8748a3f@redhat.com>
References: <00ce3a12-88cc-5727-5ee1-ff13b8748a3f@redhat.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Thu, 27 Oct 2016 16:24:35 -0600
Message-ID: <CANO=Ty3orM88PNLeyyNO41yD+ScJyi5ys4_ZeNAEY+qR+LP6Tw@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: openstack@lists.openstack.org, openstack-dev@lists.openstack.org
Content-Type: multipart/alternative; boundary=94eb2c08ca7ae4474c053fe0347b
Subject: Re: [oss-security] [OSSN-0076] Glance Image service v1 and v2 api
 image-create vulnerability

--94eb2c08ca7ae4474c053fe0347b
Content-Type: text/plain; charset=UTF-8

Just a note this was assigned CVE-2016-8611

On Thu, Oct 27, 2016 at 3:42 PM, Luke Hinds <lhinds@redhat.com> wrote:

> Glance Image service v1 and v2 api image-create vulnerability
> ---
>
> ### Summary ###
> No limits are enforced within the Glance image service for both v1 and
> v2 `/images` API POST method for authenticated users, resulting in
> possible denial of service attacks through database table saturation.
>
> ### Affected Services / Software ###
> All versions of Glance image service.
>
> ### Discussion ###
> Within the Glance image service, calls to the POST method within v1 or
> v2/images creates an image (record) in `queued` status. There is no
> limit enforced within the Glance API on the number of images a single
> tenant may create, just on the total amount of storage a single user may
> consume.
>
> Therefore a user could either maliciously or unintentionally fill
> multiple database tables (images, image_properties, image_tags,
> image_members) with useless image records, thereby causing a denial of
> service by lengthening transaction response times in the Glance database.
>
> ### Recommended Actions ###
> For all versions of Glance that expose either the v1 and v2/images API,
> operators are recommended to deploy external rate-limiting proxies or
> web application firewalls, to provide a front layer of protection to
> glance. The Glance database should be monitored for abnormal growth.
> Although rate-limiting does not eliminate this attack vector, it will
> slow it to the point where you can react prior to a denial of service
> occurring.
>
> The following solutions may be considered, however it is key that the
> operator carefully plans and considers the individual performance needs
> of users and services within their OpenStack cloud, when configuring any
> rate limiting functionality.
>
> #### Repose ####
> Repose provides a rate limiting filter, that can utilise limits by IP,
> Role (OpenStack Identity v3 filter) or header.
>
> https://repose.atlassian.net/wiki/display/REPOSE/Rate+Limiting+Filter
>
> #### NGINX ####
> NGINX provides the limit_req_module, which can be used to provide a
> global rate
> limit. By means of a `map`, it can be limited to just the POST method.
>
> Further details can be found on the nginx site:
> http://nginx.org/en/docs/http/ngx_http_limit_req_module.html
>
> #### HAProxy ####
> HAProxy can provide inherent rate-limiting using stick-tables with a
> General
> Purpose Counter (gpc)
>
> Further details can be found on the haproxy website:
>
> http://blog.haproxy.com/2012/02/27/use-a-load-balancer-as-
> a-first-row-of-defense-against-ddos
>
> #### Apache ####
> A number of solutions can be explored here as follows.
>
> ##### mod_ratelimit #####
> http://httpd.apache.org/docs/2.4/mod/mod_ratelimit.html
>
> ##### mod_qos #####
> http://opensource.adnovum.ch/mod_qos/dos.html
>
> ##### mod_evasive #####
> https://www.digitalocean.com/community/tutorials/how-to-
> protect-against-dos-and-ddos-with-mod_evasive-for-apache-on-centos-7
>
> ##### mod_security #####
> https://www.modsecurity.org/
>
> #### Limit `add_image` to admin role ####
>
> Another possible mitigation is to restrict image creation to the admin
> role, however this should only be done for those cases in which there
> are Glance nodes dedicated to end-user access only. Restriction to admin
> only on Glance nodes that serve OpenStack services will for example,
> remove the ability to create snapshots from the Compute API or to create
> bootable volumes from Cinder.
>
> To restrict image creation to the role admin only, amend
> `/etc/glance/policy.json` accordingly.
>
>     "add_image": "role:admin",
>
> ### Contacts / References ###
> Author: Luke Hinds, Red Hat
> This OSSN : https://wiki.openstack.org/wiki/OSSN/OSSN-0076
> Original LaunchPad Bug : https://bugs.launchpad.net/ossn/+bug/1545092
> OpenStack Security ML : openstack-security@lists.openstack.org
> OpenStack Security Group : https://launchpad.net/~openstack-ossg
>
>
>


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c08ca7ae4474c053fe0347b--
