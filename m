X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1474" "Monday" "20" "April" "2015" "19:57:10" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150421025710.GA24209@hunt>" "49" "[oss-security] use-after-free in src/libnetfilter_cthelper.c" nil nil nil "4" "2015042102:57:10" "[oss-security] use-after-free in src/libnetfilter_cthelper.c" (number mark "        seth.arnold@ Apr 20   49/1474  " thread-indent "\"[oss-security] use-after-free in src/libnetfilter_cthelper.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9680 invoked by uid 550); 21 Apr 2015 02:57:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9614 invoked from network); 21 Apr 2015 02:57:27 -0000
Message-ID: <20150421025710.GA24209@hunt>
Mail-Followup-To: pablo@netfilter.org, oss-security@lists.openwall.com,
	security@ubuntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com, security@ubuntu.com
Date: Mon, 20 Apr 2015 19:57:10 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] use-after-free in src/libnetfilter_cthelper.c
To: pablo@netfilter.org

--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Pablo, all,

I noticed a use-after-free in src/libnetfilter_cthelper.c:

void nfct_helper_free(struct nfct_helper *h)
{
        int i;

        free(h);
        for (i=0; i<NF_CT_HELPER_CLASS_MAX; i++) {
                if (h->expect_policy[i])
                        free(h->expect_policy[i]);
        }
}

A simple fix would move the free(h) line below the for() loop.

Does this issue deserve a CVE? Determining exploitability is not my
expertise.

A simple browsable version can be found at:
http://sources.debian.net/src/libnetfilter-cthelper/1.0.0-1/src/libnetfilter_cthelper.c/?hl=109#L108

Some callers of this function can be found in the conntrack package:
https://codesearch.debian.net/results/nfct_helper_free%20package%3Aconntrack/page_0

Thanks

--8t9RHnE3ZwKMSgU+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVNbyGAAoJEPMhclmdjS6Xqk8H/3FveYZRB8Q2PY/43rhKfu3C
lLBoH3vTxZfnvBjbvL23rlXASnGW4rYxbeRsmIM2OaUSF0FqLlN0zjXRZjKw2FxQ
2vcwO/t6yeHw7EZDV7aVbPhPBX8mraejHyx5PSa3cPhBGuagF6o/eA6L8wD6CuRk
5D+eg66a19JNDR+j5WTXGUA3oizpU6//gbfCQNe4nL0fmz7d06PCNqXgtxiaQW9F
SY/vcjbirTBwJu02nx6eo8WZT2sWGbHEr8q1k7CsCAreAvzbJSJewEJiJwkvfANX
cOziSSrH7BI+5K3f2vaeBOEmCshkX8wWIwnv3633LKohABg6BNogOGj+ZOmSPp8=
=Xw6h
-----END PGP SIGNATURE-----

--8t9RHnE3ZwKMSgU+--
