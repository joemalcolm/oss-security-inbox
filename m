X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3434" "Monday" "30" "March" "2020" "20:21:18" "-0700" "Russ Allbery" "eagle@eyrie.org" "<87wo718b0x.fsf@hope.eyrie.org>" "80" "[oss-security] pam-krb5 security advisory (4.9 and earlier)" nil nil nil "3" "2020033103:21:18" "[oss-security] pam-krb5 security advisory (4.9 and earlier)" (number mark "U       eagle@eyrie. Mar 30   80/3434  " thread-indent "\"[oss-security] pam-krb5 security advisory (4.9 and earlier)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] pam-krb5 security advisory (4.9 and earlier)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15436 invoked by uid 550); 31 Mar 2020 03:21:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15406 invoked from network); 31 Mar 2020 03:21:32 -0000
From: Russ Allbery <eagle@eyrie.org>
To: kerberos@mit.edu, oss-security@lists.openwall.com
Organization: The Eyrie
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Date: Mon, 30 Mar 2020 20:21:18 -0700
Message-ID: <87wo718b0x.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] pam-krb5 security advisory (4.9 and earlier)

Vulnerability type:  Buffer overflow
Versions affected:   All versions prior to 4.8
Versions fixed:      4.9 and later
Discovered:          2020-03-02
Public announcement: 2009-03-30
CVE ID:              CVE-2020-10595

During a refactor of my pam-krb5 Kerberos PAM module, I discovered a
single byte buffer overflow that had been there since either the first
version of the module or very early in its development.  During prompting
initiated by the Kerberos library, an attacker who enters a response
exactly as long as the length of the buffer provided by the underlying
Kerberos library will cause pam-krb5 to write a single nul byte past the
end of that buffer.

The effect of this buffer overflow will depend on the buffer allocation
strategy of the underlying Kerberos library, but could result in heap
corruption or a single-byte overwrite of another stack variable, with
unknown consequences.  Conceivably, remote code execution could be
possible, although I believe it would be difficult to achieve.

Under normal usage of this PAM module, it never does prompting initiated
by the Kerberos library, and thus most configurations will not be readily
vulnerable to this bug.  Kerberos-library-initiated prompting generally
only happens with the no_prompt PAM configuration option, PKINIT, or other
non-password preauth mechanisms.

I do not believe this vulnerability is publicly known, and am not aware of
any exploits in the wild.

This problem has been fixed in pam-krb5 4.9, available from:

  https://www.eyrie.org/~eagle/software/pam-krb5/

pam-krb5 was released as the libpam-krb5 and libpam-heimdal packages with
Debian 4.0 (etch) and later.  These vulnerabilities will be fixed in the
4.7-4+deb9u1 version of the libpam-krb5 Debian package for Debian 9.0
(stretch) and the 4.8-2+deb10u1 version for Debian 10.0 (buster).  They
have also been fixed in the 4.9-1 package for Debian unstable (sid).

For others who use this module, here is a patch that should apply to
versions prior to 4.9.  (pam-krb5 4.9 restructures this code.)

diff --git a/prompting.c b/prompting.c
index e985d95..d81054f 100644
--- a/prompting.c
+++ b/prompting.c
@@ -314,26 +314,27 @@ pamk5_prompter_krb5(krb5_context context UNUSED, void *data, const char *name,
     /*
      * Reuse pam_prompts as a starting index and copy the data into the reply
      * area of the krb5_prompt structs.
      */
     pam_prompts = 0;
     if (name != NULL && !args->silent)
         pam_prompts++;
     if (banner != NULL && !args->silent)
         pam_prompts++;
     for (i = 0; i < num_prompts; i++, pam_prompts++) {
-        size_t len;
+        size_t len, allowed;
 
         if (resp[pam_prompts].resp == NULL)
             goto cleanup;
         len = strlen(resp[pam_prompts].resp);
-        if (len > prompts[i].reply->length)
+        allowed = prompts[i].reply->length;
+        if (allowed == 0 || len > allowed - 1)
             goto cleanup;
 
         /*
          * The trailing nul is not included in length, but other applications
          * expect it to be there.  Therefore, we copy one more byte than the
          * actual length of the password, but set length to just the length of
          * the password.
          */
         memcpy(prompts[i].reply->data, resp[pam_prompts].resp, len + 1);
         prompts[i].reply->length = (unsigned int) len;

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
