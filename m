Received: (qmail 12152 invoked by uid 550); 22 Feb 2025 03:27:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5150 invoked from network); 22 Feb 2025 03:25:49 -0000
Date: Sat, 22 Feb 2025 04:25:21 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>,
	Dmitry Belyavskiy <dbelyavs@redhat.com>,
	Jordy Zomer <jordy@pwning.systems>, Damien Miller <djm@mindrot.org>
Message-ID: <20250222032521.GA30890@openwall.com>
References: <20250218091414.GA26981@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
In-Reply-To: <20250218091414.GA26981@localhost.localdomain>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] MitM attack against OpenSSH's VerifyHostKeyDNS-enabled client

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thank you Qualys for the very interesting research, as is usual from you.

On Tue, Feb 18, 2025 at 09:14:36AM +0000, Qualys Security Advisory wrote:
> - we manually audited all of OpenSSH's functions that use "goto", for
>   missing resets of their return value;
> 
> - we wrote a CodeQL query that automatically searches for functions that
>   "goto out" without resetting their return value in the corresponding
>   "if" code block.

I didn't go as far as CodeQL, but I also did some semi-manual auditing:

grep -A100 '[^a-z_]if.[^=!<>]*=[^=]' *.c | less

and then search for goto.  I did this against patched OpenSSH source
tree installed with "rpmbuild -rp openssh-8.7p1-43.el9.src.rpm" hoping
to spot any issues there may be specific to this older base OpenSSH
version or Red Hat's changes to it.

This is indeed imperfect as it e.g. doesn't catch assignments only seen
on further lines within an "if" condition (not the line with "if" on it)
if the condition spans multiple lines.  I also ran out of time
completing this review.  In the portion that I did review, I only found
a subset of the same issues that Qualys had found, plus one related
uninteresting bug (see below).

> Our manual audit (of all the functions that use "goto") allowed us to
> verify that our CodeQL query does not produce false negatives (which
> would be worse than false positives), but it also allowed us to review
> code that is similar but not identical to the idiom presented in the
> "Background" section.
> 
> In OpenSSH's client, the following code, which checks the server's
> identity (the server's host key), naturally caught our attention:
> 
> ------------------------------------------------------------------------
>   93 static int
>   94 verify_host_key_callback(struct sshkey *hostkey, struct ssh *ssh)
>   95 {
>  ...
>  101         if (verify_host_key(xxx_host, xxx_hostaddr, hostkey,
>  102             xxx_conn_info) == -1)
>  103                 fatal("Host key verification failed.");
>  104         return 0;
>  105 }
> ------------------------------------------------------------------------
> 1470 int
> 1471 verify_host_key(char *host, struct sockaddr *hostaddr, struct sshkey *host_key,
> 1472     const struct ssh_conn_info *cinfo)
> 1473 {
> ....
> 1538         if (options.verify_host_key_dns) {
> ....
> 1543                 if ((r = sshkey_from_private(host_key, &plain)) != 0)
> 1544                         goto out;
> ....
> 1571 out:
> ....
> 1580         return r;
> 1581 }
> ------------------------------------------------------------------------

Given that the actually security-relevant bug turned out to be "similar
but not identical to the idiom" that Qualys wrote they did most auditing
of, I then switched to going through:

grep 'if.*(.*(.*== *-1' *.c | less

This is similarly imperfect (only catches function calls directly from
the "if" line, not return values assigned to a variable just before, and
doesn't catch continuation lines), but at least I completed this review
for openssh-9.9p1.  This amounted to separately locating and reviewing
the bodies of called OpenSSH-specific functions (not libc functions nor
compatibility wrappers) and sometimes those of nested function calls.

(I assumed the compatibility wrappers correctly implement the same
function that a library would, including return value semantics.
Someone may review them separately.  I actually happened to look at a
few, but that's very far from exhaustive.)

I then diff'ed the output of the above grep command vs. the same for the
openssh-8.7p1-43.el9 tree, and similarly reviewed code for all lines of
grep output that are added for openssh-8.7p1-43.el9.

With this, I also only found another uninteresting bug (see below).

I wonder if such review could also be automated with CodeQL (or maybe
even the classic Coccinelle?), or if it's beyond tools' capabilities?

> 2025-02-10: Advisory and patches sent to distros@openwall.

Qualys did in fact share a patch from upstream OpenSSH developers, which
I now see is identical to changes that went into 9.9p2 (which also
includes some other changes).  As I found this focused patch helpful for
my code reviews and fix backporting, I also attach it here.

I also attach my result of applying the patch to openssh-8.7p1-43.el9.
I reviewed that whatever hunks did not apply were in fact inapplicable
to this version.  I also added a fix for my uninteresting bug one:

+++ openssh-8.7p1-43.el9-tree.qualys-retval/ssh-agent.c	2025-02-21 04:01:32.677160367 +0000
@@ -700,6 +700,8 @@ process_add_identity(SocketEntry *e)
 	if ((r = sshkey_private_deserialize(e->request, &k)) != 0 ||
 	    k == NULL ||
 	    (r = sshbuf_get_cstring(e->request, &comment, NULL)) != 0) {
+		if (!r) /* k == NULL */
+			r = SSH_ERR_INTERNAL_ERROR;
 		error_fr(r, "parse");
 		goto out;
 	}

This should prevent logging a confusing "parse: success" message on
"k == NULL", as r could have been set to 0 on the line before.

This issue is also present in upstream OpenSSH 9.9p2.

As to my uninteresting bug two, it's illustrated by this patch (also
attached here):

+++ openssh-8.7p1-43.el9-tree.krb5-ssh_asprintf_append/auth-krb5.c	2025-02-21 03:37:13.106465704 +0000
@@ -309,13 +309,14 @@ ssh_asprintf_append(char **dsc, const ch
 	i = vasprintf(&src, fmt, ap);
 	va_end(ap);
 
-	if (i == -1 || src == NULL)
+	if (i == -1)
 		return -1;
 
 	old = *dsc;
 
 	i = asprintf(dsc, "%s%s", *dsc, src);
-	if (i == -1 || src == NULL) {
+	if (i == -1) {
+		*dsc = old;
 		free(src);
 		return -1;
 	}

This is in RH-added Kerberos support code.  The issue was that if the
second asprintf() call failed, it'd leave *dsc undefined, yet the caller
of this function would free() memory via that pointer.  In practice,
glibc would either leave the pointer unchanged or reset it to NULL
(varying by glibc version and specific error condition), both of which
are safe to free().  Yet resetting "*dsc = old;" should be safer, and
should avoid the memory leak that happens if *dsc got reset to NULL.
That memory leak shouldn't have mattered anyway because it'd only occur
when the process already has trouble allocating more memory here.

The "src == NULL" checks are dropped because the first one shouldn't
matter if asprintf() behaves correctly and wouldn't help if it does not
(as src isn't initialized to NULL before the call), the second one
is wrong (was probably meant to check *dsc, not src), and further code
in this same source file relies on asprintf() return value anyway.

These patches just went into the Rocky Linux SIG/Security package of
OpenSSH for EL9:

https://sig-security.rocky.page/packages/openssh/
https://git.rockylinux.org/sig/security/src/openssh

The above auth-krb5.c patch is actually untested since we currently
build that package with Kerberos support excluded (and besides it'd take
specific effort to trigger that error path).

Alexander

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="openssh-9.9-upstream-retval.patch"

diff --git a/krl.c b/krl.c
index 51a2871..4ecb2c7 100644
--- a/krl.c
+++ b/krl.c
@@ -672,6 +672,7 @@ revoked_certs_generate(struct revoked_certs *rc, struct sshbuf *buf)
 			break;
 		case KRL_SECTION_CERT_SERIAL_BITMAP:
 			if (rs->lo - bitmap_start > INT_MAX) {
+				r = SSH_ERR_INVALID_FORMAT;
 				error_f("insane bitmap gap");
 				goto out;
 			}
@@ -1057,6 +1058,7 @@ ssh_krl_from_blob(struct sshbuf *buf, struct ssh_krl **krlp)
 	}
 
 	if ((krl = ssh_krl_init()) == NULL) {
+		r = SSH_ERR_ALLOC_FAIL;
 		error_f("alloc failed");
 		goto out;
 	}
diff --git a/packet.c b/packet.c
index 72803fd..fa0f7ca 100644
--- a/packet.c
+++ b/packet.c
@@ -1839,6 +1839,14 @@ ssh_packet_read_poll_seqnr(struct ssh *ssh, u_char *typep, u_int32_t *seqnr_p)
 			if ((r = sshpkt_get_string_direct(ssh, &d, &len)) != 0)
 				return r;
 			DBG(debug("Received SSH2_MSG_PING len %zu", len));
+			if (!ssh->state->after_authentication) {
+				DBG(debug("Won't reply to PING in preauth"));
+				break;
+			}
+			if (ssh_packet_is_rekeying(ssh)) {
+				DBG(debug("Won't reply to PING during KEX"));
+				break;
+			}
 			if ((r = sshpkt_start(ssh, SSH2_MSG_PONG)) != 0 ||
 			    (r = sshpkt_put_string(ssh, d, len)) != 0 ||
 			    (r = sshpkt_send(ssh)) != 0)
diff --git a/ssh-agent.c b/ssh-agent.c
index 73276f6..607c4a0 100644
--- a/ssh-agent.c
+++ b/ssh-agent.c
@@ -1207,6 +1207,7 @@ parse_key_constraint_extension(struct sshbuf *m, char **sk_providerp,
 	    "restrict-destination-v00@openssh.com") == 0) {
 		if (*dcsp != NULL) {
 			error_f("%s already set", ext_name);
+			r = SSH_ERR_INVALID_FORMAT;
 			goto out;
 		}
 		if ((r = sshbuf_froms(m, &b)) != 0) {
@@ -1216,6 +1217,7 @@ parse_key_constraint_extension(struct sshbuf *m, char **sk_providerp,
 		while (sshbuf_len(b) != 0) {
 			if (*ndcsp >= AGENT_MAX_DEST_CONSTRAINTS) {
 				error_f("too many %s constraints", ext_name);
+				r = SSH_ERR_INVALID_FORMAT;
 				goto out;
 			}
 			*dcsp = xrecallocarray(*dcsp, *ndcsp, *ndcsp + 1,
@@ -1233,6 +1235,7 @@ parse_key_constraint_extension(struct sshbuf *m, char **sk_providerp,
 		}
 		if (*certs != NULL) {
 			error_f("%s already set", ext_name);
+			r = SSH_ERR_INVALID_FORMAT;
 			goto out;
 		}
 		if ((r = sshbuf_get_u8(m, &v)) != 0 ||
@@ -1244,6 +1247,7 @@ parse_key_constraint_extension(struct sshbuf *m, char **sk_providerp,
 		while (sshbuf_len(b) != 0) {
 			if (*ncerts >= AGENT_MAX_EXT_CERTS) {
 				error_f("too many %s constraints", ext_name);
+				r = SSH_ERR_INVALID_FORMAT;
 				goto out;
 			}
 			*certs = xrecallocarray(*certs, *ncerts, *ncerts + 1,
@@ -1744,6 +1748,7 @@ process_ext_session_bind(SocketEntry *e)
 	/* record new key/sid */
 	if (e->nsession_ids >= AGENT_MAX_SESSION_IDS) {
 		error_f("too many session IDs recorded");
+		r = -1;
 		goto out;
 	}
 	e->session_ids = xrecallocarray(e->session_ids, e->nsession_ids,
diff --git a/ssh-sk-client.c b/ssh-sk-client.c
index c00c633..27d27a2 100644
--- a/ssh-sk-client.c
+++ b/ssh-sk-client.c
@@ -429,6 +429,7 @@ sshsk_load_resident(const char *provider_path, const char *device,
 		}
 		if ((srk = calloc(1, sizeof(*srk))) == NULL) {
 			error_f("calloc failed");
+			r = SSH_ERR_ALLOC_FAIL;
 			goto out;
 		}
 		srk->key = key;
@@ -440,6 +441,7 @@ sshsk_load_resident(const char *provider_path, const char *device,
 		if ((tmp = recallocarray(srks, nsrks, nsrks + 1,
 		    sizeof(*srks))) == NULL) {
 			error_f("recallocarray keys failed");
+			r = SSH_ERR_ALLOC_FAIL;
 			goto out;
 		}
 		debug_f("srks[%zu]: %s %s uidlen %zu", nsrks,
diff --git a/sshconnect2.c b/sshconnect2.c
index 9940833..9751b68 100644
--- a/sshconnect2.c
+++ b/sshconnect2.c
@@ -94,7 +94,7 @@ verify_host_key_callback(struct sshkey *hostkey, struct ssh *ssh)
 	    options.required_rsa_size)) != 0)
 		fatal_r(r, "Bad server host key");
 	if (verify_host_key(xxx_host, xxx_hostaddr, hostkey,
-	    xxx_conn_info) == -1)
+	    xxx_conn_info) != 0)
 		fatal("Host key verification failed.");
 	return 0;
 }
@@ -692,6 +692,7 @@ input_userauth_pk_ok(int type, u_int32_t seq, struct ssh *ssh)
 
 	if ((pktype = sshkey_type_from_name(pkalg)) == KEY_UNSPEC) {
 		debug_f("server sent unknown pkalg %s", pkalg);
+		r = SSH_ERR_INVALID_FORMAT;
 		goto done;
 	}
 	if ((r = sshkey_from_blob(pkblob, blen, &key)) != 0) {
@@ -702,6 +703,7 @@ input_userauth_pk_ok(int type, u_int32_t seq, struct ssh *ssh)
 		error("input_userauth_pk_ok: type mismatch "
 		    "for decoded key (received %d, expected %d)",
 		    key->type, pktype);
+		r = SSH_ERR_INVALID_FORMAT;
 		goto done;
 	}
 
@@ -721,6 +723,7 @@ input_userauth_pk_ok(int type, u_int32_t seq, struct ssh *ssh)
 		    SSH_FP_DEFAULT);
 		error_f("server replied with unknown key: %s %s",
 		    sshkey_type(key), fp == NULL ? "<ERROR>" : fp);
+		r = SSH_ERR_INVALID_FORMAT;
 		goto done;
 	}
 	ident = format_identity(id);
diff --git a/sshsig.c b/sshsig.c
index 72bbf73..a88e939 100644
--- a/sshsig.c
+++ b/sshsig.c
@@ -877,6 +877,7 @@ cert_filter_principals(const char *path, u_long linenum,
 	}
 	if ((principals = sshbuf_dup_string(nprincipals)) == NULL) {
 		error_f("buffer error");
+		r = SSH_ERR_ALLOC_FAIL;
 		goto out;
 	}
 	/* success */

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="openssh-8.7p1-upstream-rocky-retval.patch"

diff -urp openssh-8.7p1-43.el9-tree.orig/krl.c openssh-8.7p1-43.el9-tree.qualys-retval/krl.c
--- openssh-8.7p1-43.el9-tree.orig/krl.c	2025-02-14 00:31:18.634510910 +0000
+++ openssh-8.7p1-43.el9-tree.qualys-retval/krl.c	2025-02-21 02:48:23.080972135 +0000
@@ -674,6 +674,7 @@ revoked_certs_generate(struct revoked_ce
 			break;
 		case KRL_SECTION_CERT_SERIAL_BITMAP:
 			if (rs->lo - bitmap_start > INT_MAX) {
+				r = SSH_ERR_INVALID_FORMAT;
 				error_f("insane bitmap gap");
 				goto out;
 			}
@@ -1008,6 +1009,7 @@ ssh_krl_from_blob(struct sshbuf *buf, st
 		goto out;
 
 	if ((krl = ssh_krl_init()) == NULL) {
+		r = SSH_ERR_ALLOC_FAIL;
 		error_f("alloc failed");
 		goto out;
 	}
diff -urp openssh-8.7p1-43.el9-tree.orig/ssh-agent.c openssh-8.7p1-43.el9-tree.qualys-retval/ssh-agent.c
--- openssh-8.7p1-43.el9-tree.orig/ssh-agent.c	2025-02-14 00:31:18.653510894 +0000
+++ openssh-8.7p1-43.el9-tree.qualys-retval/ssh-agent.c	2025-02-21 04:01:32.677160367 +0000
@@ -700,6 +700,8 @@ process_add_identity(SocketEntry *e)
 	if ((r = sshkey_private_deserialize(e->request, &k)) != 0 ||
 	    k == NULL ||
 	    (r = sshbuf_get_cstring(e->request, &comment, NULL)) != 0) {
+		if (!r) /* k == NULL */
+			r = SSH_ERR_INTERNAL_ERROR;
 		error_fr(r, "parse");
 		goto out;
 	}
diff -urp openssh-8.7p1-43.el9-tree.orig/sshconnect2.c openssh-8.7p1-43.el9-tree.qualys-retval/sshconnect2.c
--- openssh-8.7p1-43.el9-tree.orig/sshconnect2.c	2025-02-14 00:31:18.743510817 +0000
+++ openssh-8.7p1-43.el9-tree.qualys-retval/sshconnect2.c	2025-02-21 02:48:30.464965775 +0000
@@ -102,7 +102,7 @@ verify_host_key_callback(struct sshkey *
 	    options.required_rsa_size)) != 0)
 		fatal_r(r, "Bad server host key");
 	if (verify_host_key(xxx_host, xxx_hostaddr, hostkey,
-	    xxx_conn_info) == -1)
+	    xxx_conn_info) != 0)
 		fatal("Host key verification failed.");
 	return 0;
 }
@@ -811,6 +811,7 @@ input_userauth_pk_ok(int type, u_int32_t
 
 	if ((pktype = sshkey_type_from_name(pkalg)) == KEY_UNSPEC) {
 		debug_f("server sent unknown pkalg %s", pkalg);
+		r = SSH_ERR_INVALID_FORMAT;
 		goto done;
 	}
 	if ((r = sshkey_from_blob(pkblob, blen, &key)) != 0) {
@@ -821,6 +822,7 @@ input_userauth_pk_ok(int type, u_int32_t
 		error("input_userauth_pk_ok: type mismatch "
 		    "for decoded key (received %d, expected %d)",
 		    key->type, pktype);
+		r = SSH_ERR_INVALID_FORMAT;
 		goto done;
 	}
 
@@ -840,6 +842,7 @@ input_userauth_pk_ok(int type, u_int32_t
 		    SSH_FP_DEFAULT);
 		error_f("server replied with unknown key: %s %s",
 		    sshkey_type(key), fp == NULL ? "<ERROR>" : fp);
+		r = SSH_ERR_INVALID_FORMAT;
 		goto done;
 	}
 	ident = format_identity(id);
diff -urp openssh-8.7p1-43.el9-tree.orig/sshsig.c openssh-8.7p1-43.el9-tree.qualys-retval/sshsig.c
--- openssh-8.7p1-43.el9-tree.orig/sshsig.c	2025-02-14 00:31:18.658510889 +0000
+++ openssh-8.7p1-43.el9-tree.qualys-retval/sshsig.c	2025-02-21 02:48:30.465965774 +0000
@@ -971,6 +971,7 @@ cert_filter_principals(const char *path,
 	}
 	if ((principals = sshbuf_dup_string(nprincipals)) == NULL) {
 		error_f("buffer error");
+		r = SSH_ERR_ALLOC_FAIL;
 		goto out;
 	}
 	/* success */
diff -urp openssh-8.7p1-43.el9-tree.orig/ssh-sk-client.c openssh-8.7p1-43.el9-tree.qualys-retval/ssh-sk-client.c
--- openssh-8.7p1-43.el9-tree.orig/ssh-sk-client.c	2021-08-20 04:03:49.000000000 +0000
+++ openssh-8.7p1-43.el9-tree.qualys-retval/ssh-sk-client.c	2025-02-21 02:48:30.462965777 +0000
@@ -419,6 +419,7 @@ sshsk_load_resident(const char *provider
 		if ((tmp = recallocarray(keys, nkeys, nkeys + 1,
 		    sizeof(*keys))) == NULL) {
 			error_f("recallocarray keys failed");
+			r = SSH_ERR_ALLOC_FAIL;
 			goto out;
 		}
 		debug_f("keys[%zu]: %s %s", nkeys, sshkey_type(key),

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="openssh-8.7p1-rocky-krb5-ssh_asprintf_append.patch"

diff -urp openssh-8.7p1-43.el9-tree.orig/auth-krb5.c openssh-8.7p1-43.el9-tree.krb5-ssh_asprintf_append/auth-krb5.c
--- openssh-8.7p1-43.el9-tree.orig/auth-krb5.c	2025-02-14 00:31:18.629510914 +0000
+++ openssh-8.7p1-43.el9-tree.krb5-ssh_asprintf_append/auth-krb5.c	2025-02-21 03:37:13.106465704 +0000
@@ -309,13 +309,14 @@ ssh_asprintf_append(char **dsc, const ch
 	i = vasprintf(&src, fmt, ap);
 	va_end(ap);
 
-	if (i == -1 || src == NULL)
+	if (i == -1)
 		return -1;
 
 	old = *dsc;
 
 	i = asprintf(dsc, "%s%s", *dsc, src);
-	if (i == -1 || src == NULL) {
+	if (i == -1) {
+		*dsc = old;
 		free(src);
 		return -1;
 	}

--fdj2RfSjLxBAspz7--
