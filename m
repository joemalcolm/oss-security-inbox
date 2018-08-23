X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12729" "Thursday" "23" "August" "2018" "12:35:52" "+0200" "Solar Designer" "solar@openwall.com" "<20180823103552.GA23085@openwall.com>" "327" "Re: [oss-security] OpenSSH Username Enumeration" "^Cc:" nil nil "8" "2018082310:35:52" "[oss-security] OpenSSH Username Enumeration" (number mark "        solar@openwa Aug 23  327/12729 " thread-indent "\"Re: [oss-security] OpenSSH Username Enumeration\"\n") "<b175ea89-96b7-8645-4d82-1d8be96fc78e@securitum.pl>" ("<20180815160558.GA23020@localhost.localdomain>" "<20180817183154.GA18661@eldamar.local>" "<b175ea89-96b7-8645-4d82-1d8be96fc78e@securitum.pl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18381 invoked by uid 550); 23 Aug 2018 10:37:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17599 invoked from network); 23 Aug 2018 10:36:49 -0000
Message-ID: <20180823103552.GA23085@openwall.com>
References: <20180815160558.GA23020@localhost.localdomain> <20180817183154.GA18661@eldamar.local> <b175ea89-96b7-8645-4d82-1d8be96fc78e@securitum.pl>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline
In-Reply-To: <b175ea89-96b7-8645-4d82-1d8be96fc78e@securitum.pl>
User-Agent: Mutt/1.4.2.3i
Cc: Dariusz Tytko <dariusz.tytko@securitum.pl>
Date: Thu, 23 Aug 2018 12:35:52 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSH Username Enumeration
To: oss-security@lists.openwall.com

--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 23, 2018 at 09:50:08AM +0200, Dariusz Tytko wrote:
> We have published our writeup
> https://sekurak.pl/openssh-users-enumeration-cve-2018-15473/, hope it
> helps to better understanding the problem.

Thanks.  We have a policy here that the actual content must be in the
message, not only included by reference.  Luckily, Qualys already
brought some detail in here, but nevertheless I'm also attaching a text
export of your blog post.  Next time you post, please take care of this
on your own (if relevant).

https://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"At least the most essential part of your message (e.g., vulnerability
detail and/or exploit) should be directly included in the message itself
(and in plain text), rather than only included by reference to an
external resource.  Posting links to relevant external resources as well
is acceptable, but posting only links is not.  Your message should
remain valuable even with all of the external resources gone."

As it relates to the actual issue (and past issues, which had to do with
the password hashing step being skipped or done differently), I'd like
to note that username enumeration will generally remain possible via
finer and more numerous timing measurements, primarily because user
lookup with getpwnam(3) and such is generally not timing-safe.  Fixing
some of these issues, we're just making username enumeration harder,
slower, and less reliable.  These are fine goals and it's great that
specific fixable issues are getting fixed, but I do see why the OpenSSH
team wouldn't formally treat this as a vulnerability.  OTOH, easy
username enumeration issues were treated as vulnerabilities (although
maybe not by upstreams, I just don't recall) at least for proftpd and
vsftpd (these got CVE IDs for such issues in 2004), and probably more.

Alexander

--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="OpenSSH-users-enumeration-CVE-2018-15473.txt"

                  OpenSSH - users enumeration - CVE-2018-15473

   22 sierpnia 2018, 17:57

   --------------------------------------------------------------------------

   We planned to publish the following article after release fixed OpenSSH
   version. However, due to the fact that technical details with working
   exploit were published on the Internet, we decided to publish our
   research.

Introduction

   When testing infrastructure security, we often face the task of testing
   the security of the SSH server. One of the basic tests is to check the
   resistance to brute-force attacks. When performing such a type of attacks,
   knowledge of correct user names significantly increases the probability of
   success - instead of checking all possible combinations of potential
   usernames and passwords, we check the validity of passwords only for
   existing users. One way to obtain a list of correct usernames is
   enumeration, which, in simple terms, boils down to using the
   authentication server error to verify that the username is correct. If the
   authentication server allows to enumerate user names, the brute-force
   attack can be divided into two stages:

    1. We filter the list of potential user names by querying the server for
       the correctness of the given name
    2. We use the list of existing user names to perform the main brute-force
       attack

   Due to the popularity of the OpenSSH server, I decided to analyze the
   server code for the vulnerability to enumerating user names. The result of
   the analysis is presented below.

Technical details

   The latest version (as of 2018.07.16) of the OpenSSH server has been
   analyzed.

   The auth2-pubkey.c file contains the code implementing the key
   authentication:

   _____________________

   87  static int
   88  userauth_pubkey(struct ssh *ssh)
   89  {
   90      Authctxt *authctxt = ssh->authctxt;
   91      struct passwd *pw = authctxt->pw;
   92      struct sshbuf *b;
   93      struct sshkey *key = NULL;
   94      char *pkalg, *userstyle = NULL, *key_s = NULL, *ca_s = NULL;
   95      u_char *pkblob, *sig, have_sig;
   96      size_t blen, slen;
   97      int r, pktype;
   98      int authenticated = 0;
   99      struct sshauthopt *authopts = NULL;
   100
   101     if (!authctxt->valid) {
   102         debug2("%s: disabled because of invalid user", __func__);
   103         return 0;
   104     }
   105     if ((r = sshpkt_get_u8(ssh, &have_sig)) != 0 ||
   106         (r = sshpkt_get_cstring(ssh, &pkalg, NULL)) != 0 ||
   107         (r = sshpkt_get_string(ssh, &pkblob, &blen)) != 0)
   108         fatal("%s: parse request failed: %s", __func__, ssh_err(r));
   109     pktype = sshkey_type_from_name(pkalg);

   In the case when the authentication attempt takes place for a non-existent
   user, the condition checked at line 101 is satisfied, as a result the
   server completes the authentication process (line 103). Otherwise, when
   the username is correct, the authentication process continues.

   Lines 105-107 contain the code responsible for parsing the SSH packet. If
   a parsing error occurs, the process ends in an error (calling the "fatal"
   function on line 108). At this stage of the analysis, we can assume that
   "gentle" (line 103) and emergency (line 108) ending of the authentication
   process should be clearly distinguishable from the SSH client's
   perspective.

   In order to develop a method for the emergency completion of the process,
   let's analyze the function "sshpkt_get_string" (packet.c):

   _____________________

   2518 int
   2519 sshpkt_get_string(struct ssh *ssh, u_char **valp, size_t *lenp)
   2520 {
   2521   return sshbuf_get_string(ssh->state->incoming_packet, valp, lenp);
   2522 }

   At line 2521, the "sshbuf_get_string" function is called
   (sshbuf-getput-basic.c):

   _____________________

   96  int
   97  sshbuf_get_string(struct sshbuf *buf, u_char **valp, size_t *lenp)
   98  {
   99     const u_char *val;
   100    size_t len;
   101    int r;
   102
   103    if (valp != NULL)
   104        *valp = NULL;
   105    if (lenp != NULL)
   106        *lenp = 0;
   107    if ((r = sshbuf_get_string_direct(buf, &val, &len)) < 0)
   108        return r;

   At line 107, the "sshbuf_get_string_direct" function is called
   (sshbuf-getput-basic.c):

   _____________________

   123 int
   124 sshbuf_get_string_direct(struct sshbuf *buf, const u_char **valp, size_t *lenp)
   125 {
   126    size_t len;
   127    const u_char *p;
   128    int r;
   129
   130    if (valp != NULL)
   131        *valp = NULL;
   132    if (lenp != NULL)
   133        *lenp = 0;
   134    if ((r = sshbuf_peek_string_direct(buf, &p, &len)) < 0)
   135        return r;
   136    if (valp != NULL)

   At line 134, the "sshbuf_peek_string_direct" function is called
   (sshbuf-getput-basic.c):

   _____________________

   149 int
   150 sshbuf_peek_string_direct(const struct sshbuf *buf, const u_char **valp,
   151    size_t *lenp)
   152 {
   153    u_int32_t len;
   154    const u_char *p = sshbuf_ptr(buf);
   155
   156    if (valp != NULL)
   157        *valp = NULL;
   158    if (lenp != NULL)
   159        *lenp = 0;
   160    if (sshbuf_len(buf) < 4) {
   161        SSHBUF_DBG(("SSH_ERR_MESSAGE_INCOMPLETE"));
   162        return SSH_ERR_MESSAGE_INCOMPLETE;
   163    }
   164    len = PEEK_U32(p);
   165    if (len > SSHBUF_SIZE_MAX - 4) {
   166        SSHBUF_DBG(("SSH_ERR_STRING_TOO_LARGE"));
   167        return SSH_ERR_STRING_TOO_LARGE;
   168    }
   169    if (sshbuf_len(buf) - 4 < len) {
   170        SSHBUF_DBG(("SSH_ERR_MESSAGE_INCOMPLETE"));
   171        return SSH_ERR_MESSAGE_INCOMPLETE;
   172    }

   The function performs validation of the "string" value, among other things
   the data length is checked (line 165) - the length cannot be greater than
   SSHBUF_SIZE_MAX - 4.

   The constant SSHBUF_SIZE_MAX is defined in the sshbuf.h file:

   _____________________

   1 #define SSHBUF_SIZE_MAX     0x8000000 /* Hard maximum size */

   At this point, we obtained a way to force the "sshpkt_get_string" function
   to return an error - sending a "string" value with a length greater than
   0x8000000 - 4.

   Let's go back to the analysis of the function "userauth_pubkey"
   (auth2-pubkey.c):

   _____________________

   87  static int
   88  userauth_pubkey(struct ssh *ssh)
   89  {
   90     Authctxt *authctxt = ssh->authctxt;
   91     struct passwd *pw = authctxt->pw;
   92     struct sshbuf *b;
   93     struct sshkey *key = NULL;
   94     char *pkalg, *userstyle = NULL, *key_s = NULL, *ca_s = NULL;
   95     u_char *pkblob, *sig, have_sig;
   96     size_t blen, slen;
   97     int r, pktype;
   98     int authenticated = 0;
   99     struct sshauthopt *authopts = NULL;
   100
   101    if (!authctxt->valid) {
   102        debug2("%s: disabled because of invalid user", __func__);
   103        return 0;
   104    }
   105    if ((r = sshpkt_get_u8(ssh, &have_sig)) != 0 ||
   106        (r = sshpkt_get_cstring(ssh, &pkalg, NULL)) != 0 ||
   107        (r = sshpkt_get_string(ssh, &pkblob, &blen)) != 0)
   108        fatal("%s: parse request failed: %s", __func__, ssh_err(r));
   109    pktype = sshkey_type_from_name(pkalg);

   There is an attempt to read the "string" value at line 107. Sending a
   value greater than 0x8000000 - 4 should cause the "sshpkt_get_string"
   function to return an error and result in an emergency termination of the
   process (line 108). It is worth to mention that the data sent does not
   have to have a length greater than 0x8000000 - 4, only the declared size
   (sent in a separate field) must exceed the allowed value.

   In order to send a crafted SSH packet that contains a "string" with the
   appropriate length, I will modify the paramiko library. Paramiko is an
   implementation of SSHv2 protocol written in Python
   (https://github.com/paramiko/paramiko). I encourage you to modify the
   library on your own.

   Based on the modified paramiko library, let's write a simple script to
   verify the correctness of the user's name:

   _____________________

   1 import paramiko
   2 import sys
   3
   4 ssh = paramiko.SSHClient()
   5 ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
   6 ssh.connect(hostname=sys.argv[1], port=int(sys.argv[2]), username=sys.argv[3], key_filename='./conf/id_rsa', password='', look_for_keys=False)
   7 ssh.close()

   Running the script for the name of an existing user (user) ends with the
   error "No existing session":

   _____________________

   1 python2 test.py debian 22 user
   2 [...]
   3 paramiko.ssh_exception.SSHException: No existing session

   Running the script for the name of a non-existent user (asdf) ends with
   the error "Authentication failed.":

   _____________________

   1 python2 test.py debian 22 asdf
   2 [...]
   3 paramiko.ssh_exception.AuthenticationException: Authentication failed.

   The difference in the server response allows to unambiguously determine
   whether a user with a given name exists in the tested system.

   At the end it is worth mentioning that the presented enumeration error, in
   addition to the obvious use in the first phase of the brute-force attack,
   can also be used to detect software installed on the tested server, e.g.
   detection of the user "postgres" suggests that the PostgreSQL database is
   used. Going forward, the existence or absence of certain names may suggest
   the use of a given operating system.

Summary

   Issue was reported to OpenSSH team. Due to the fact that fixed OpenSSH
   version has not been published yet, while on the Internet it is possible
   to find a working exploit, we recommend the following mitigations to
   protect against brute-force attacks:

     * if possible use key-based authentication instead a password-based one
     * secure the accounts with strong passwords
     * use mechanisms that help to block brute-force attacks, eg fail2ban

Timeline

   16.07.2018 - bug was reported to OpenSSH team
   18.07.2018 - bug was confirmed by OpenSSH team

   31.07.2018 - fix was published on github
   (https://github.com/openbsd/src/commit/779974d35b4859c07bc3cb8a12c74b43b0a7d1e0)
   15.08.2018 - technical details, based on publicly available fix, were
   published by independent researcher
   (http://seclists.org/oss-sec/2018/q3/124)
   17.08.2018 - CVE-2018-15473 was assigned
   22.08.2018 - our publication

                                        Dariusz Tytko, Pentester in Securitum

--nFreZHaLTZJo0R7j--
