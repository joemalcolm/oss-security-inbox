X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1461" "Monday" "18" "May" "2015" "17:01:06" "-0600" "Colton Myers" "colton@saltstack.com" "<CAOmmiAymBk6Er6uPPZm0qSsCQb+bgkAkyfyDaVpf42Qx53Fhfg@mail.gmail.com>" "54" "[oss-security] Re: [saltstack-security] CVE Request / Saltstack SSL verification disabling for alibabab cloud module" nil nil nil "5" "2015051823:01:06" "[oss-security] Re: [saltstack-security] CVE Request / Saltstack SSL verification disabling for alibabab cloud module" (number mark "        colton@salts May 18   54/1461  " thread-indent "\"[oss-security] Re: [saltstack-security] CVE Request / Saltstack SSL verification disabling for alibabab cloud module\"\n") "<20150502021045.GA29705@sisay.ephaone.org>" ("<20150502021045.GA29705@sisay.ephaone.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23712 invoked by uid 550); 19 May 2015 04:40:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31745 invoked from network); 18 May 2015 23:01:38 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=QLQMRhan15CRq88bq6yCNkMMSF09gG2VopkeGsbtOgk=;
        b=DE+ODRcePxJos2hV1GqeQxQ6AjcHrpdy2Le1eZ4lYZGuFPp6VDy3fVrHmgGf1a2Qxv
         7c3Nl3GCqLfSzk1TUsxnG9IUniIo+fFBBSkXBlFkwGT+xyraCEoaJwusmSiPoSC9LNS4
         SI4/ZnTY9Ywu72KD9RAW58m7+Ev4QLrG8d9DnYP3gR3/ckFNcwclWf+fQFX3PoL7XaCg
         mRwHgRS6IUg60AZvJa3HsVRwPeMqRpHn7qzpAm5SjnEYBnrZqcmzK91g+o7Hg/DQ7wi1
         +wRXY6NRFxjHR63EXIY18WOAYEY1Dj9sO2Kfc2g53EtVhtHiaJEk7jkQrWg9V5M/0x0V
         xg+Q==
X-Gm-Message-State: ALoCoQkU6STmIpTyLNkczonq6ZN36CqfpQh/zpNM1Rxgwl8tR+gWgpWiO5jvNECjKfrhEO6CpUCt
X-Received: by 10.60.129.166 with SMTP id nx6mr2108449oeb.38.1431990087060;
 Mon, 18 May 2015 16:01:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150502021045.GA29705@sisay.ephaone.org>
References: <20150502021045.GA29705@sisay.ephaone.org>
Message-ID: <CAOmmiAymBk6Er6uPPZm0qSsCQb+bgkAkyfyDaVpf42Qx53Fhfg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b4148ea7625a00516632c46
Cc: oss-security@lists.openwall.com, security@saltstack.com
Date: Mon, 18 May 2015 17:01:06 -0600
From: Colton Myers <colton@saltstack.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [saltstack-security] CVE Request / Saltstack SSL verification
 disabling for alibabab cloud module
To: Michael Scherer <misc@zarb.org>

--047d7b4148ea7625a00516632c46
Content-Type: text/plain; charset=UTF-8

CVE was assigned off list:

CVE-2015-4017 -- Certificates are not verified when connecting to server in
the Aliyun and Proxmox modules

And fixed in the just-released 2014.7.6:

https://groups.google.com/forum/#!topic/salt-users/8Kv1bytGD6c

The splunk module vulnerability was not in a released version of salt, so
there is no CVE for that module. It was fixed before the 2015.5.0 release.

Please note that we have a responsible disclosure policy, and would
appreciate it if it were followed in the future:

http://docs.saltstack.com/en/latest/security/index.html#disclosure

--
Colton Myers
Platform Engineer, SaltStack
@basepi on Twitter/Github/IRC

On Fri, May 1, 2015 at 8:10 PM, Michael Scherer <misc@zarb.org> wrote:

> Hi,
>
> Could a CVE be assigned for this problem :
>
> Saltstack do not verify certificate when connecting to Aliyun (Alibaba
> cloud service)
> API on HTTPS
>
> https://github.com/saltstack/salt/blob/develop/salt/cloud/clouds/aliyun.py#L724
>
>
> The same issue exist for the proxmox module :
>
> https://github.com/saltstack/salt/blob/develop/salt/cloud/clouds/proxmox.py#L115
>
> And splunk:
>
> https://github.com/saltstack/salt/blob/develop/salt/modules/splunk_search.py#L168
>
>
> This was found by running bandit on the source code
> ( https://wiki.openstack.org/wiki/Security/Projects/Bandit )
> --
> Michael Scherer
>

--047d7b4148ea7625a00516632c46--
