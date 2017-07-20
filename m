X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3860" "Wednesday" "19" "July" "2017" "21:27:12" "-0400" "Graham Christensen" "graham@grahamc.com" "<874lu7uccv.fsf@grahamc.com>" "119" "[oss-security] NIX-2017-0003: LDAP with useTLS option disabled TLS peer verification " "^Date:" nil nil "7" "2017072001:27:12" "[oss-security] NIX-2017-0003: LDAP with useTLS option disabled TLS peer verification" (number mark "        graham@graha Jul 19  119/3860  " thread-indent "\"[oss-security] NIX-2017-0003: LDAP with useTLS option disabled TLS peer verification \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9266 invoked by uid 550); 20 Jul 2017 01:27:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9234 invoked from network); 20 Jul 2017 01:27:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grahamc.com; s=google;
        h=from:to:subject:date:message-id:mime-version;
        bh=8Tk1ZCkRq+DWMfYObsJGQOSRS37HZ0q5n8FQm5Nw3Lg=;
        b=cd/Ajgq73/N36UXEp5bgaUb3omjTqplR6YKb7WqhdgyfF7vUXMvgLrbHebOjymqs0V
         gEEKqMeZ+ua5J8mzpUEYKKSWjaejpWZLcU7J8nMj49xrqcFyFpnVBtH5Wb/jfFo6VjL+
         82HITCZW9j8sOmoKYS7LddEshsCrL3b5XopMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version;
        bh=8Tk1ZCkRq+DWMfYObsJGQOSRS37HZ0q5n8FQm5Nw3Lg=;
        b=t5neqdXiKTH5mER1MjMvQjFlQqgAFqH04rotUmE/JpFCInHj24EiVeoguOVPNGmY+8
         PygYhJkc0D2DlbIcXp3IBY2FhEY+At9U6g74mkzLSnKuJMnzBhOIwKciP65dEFoxWsBx
         b6azUehPsMUWqaqVHatrzsTIeb0U3nFacdISyTxEXT2k87yK+nv/JzkM4kdGTNpKUJiE
         MJufwifqpEO92zznRxoLMT/MCX4CER/XMxHamUlXrsqAQARu58/qLVc1IaM9c3xqcNom
         0jNKXplyDaC1KQVP722jIH8OhUHzkIKbOiW1BOnKtUXTZp9KtVnzRGtx733x2LNecJUq
         Cfug==
X-Gm-Message-State: AIVw1118b39wliKrwW10zvxnBKUUSsv/IeB0+rfD0XalXnh7uUJDI/G+
	jWkE54F+BzQUZoCngNbVSg==
X-Received: by 10.55.108.68 with SMTP id h65mr2811075qkc.141.1500514034647;
        Wed, 19 Jul 2017 18:27:14 -0700 (PDT)
Message-ID: <874lu7uccv.fsf@grahamc.com>
MIME-Version: 1.0
Content-Type: text/plain
Date: Wed, 19 Jul 2017 21:27:12 -0400
From: Graham Christensen <graham@grahamc.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] NIX-2017-0003: LDAP with useTLS option disabled TLS peer verification 
To: oss-security@lists.openwall.com


Hello,

Attached is a NixOS security advisory. It is part of a greater
security-related effort within the NixOS community. It is signed by me,
a member of the NixOS security team
(https://nixos.org/nixos/security.html).

As we are a growing community, and as we grow our security-focused
efforts, we would like to ultimately seek membership in the distro list.
We do not meet the requirements at this time, in particular the private
build infrastructure. However, in an effort to improve to our process, I
would be interested in the community's feedback on our advisory format.

Note we are still working to file for a CVE on this issue.

Although I accidentally left out a link to the original issue
(https://github.com/NixOS/nixpkgs/issues/27506) in this one, all
subsequent advisories will include issue links.


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256


                         Nix Security Advisory
                             NIX-2017-0003
                              2017-07-19
                         ---------------------
            LDAP with useTLS disabled TLS peer verification


Description
===========

The users.ldap NixOS module implements user authentication against LDAP
servers via a PAM module. It was found that if TLS is enabled to connect
to the LDAP server with users.ldap.useTLS, peer verification will be
unconditionally disabled in /etc/ldap.conf.


Impact
======

A man-in-the-middle attack can be performed by an attacker between a
machine with enabled LDAP authentication and the LDAP server. Even
though TLS is enabled an attacker is able to impersonate the LDAP server
with an invalid certificate.

Attackers might be able to steal user password hashes or service account
credentials in plaintext.


Vulnerable Systems
==================

NixOS 16.09 and earlier releases are unsupported and vulnerable.

  Distribution            First Non-Vulnerable Commit
  ------------            ---------------------------
  nixos-17.03             b3fa6295ad5a040a1628cb89da26a0f6c347ac65
  nixos-unstable          2b2a6f20701c4740526a8976f3ac60fc6be797e2

  Channel                 First Non-Vulnerable Release
  -------                 ----------------------------
  nixos-17.03-small       nixos-17.03.1581.b3fa6295ad
  nixos-17.03             expected within 3 hours
  nixos-unstable-small    unknown
  nixos-unstable          unknown


Mitigation
==========

Option A:

Set users.ldap.useTLS to false, and manually specify TLS in the
extraConfig:


   {
     users.ldap.useTLS = false;
     users.ldap.extraConfig = ''
       ssl start_tls
     '';
   }

Option B:

Switch your NixOS channel to nixos-17.03-small, update, and
nixos-rebuild switch:

  # nix-channel --add https://nixos.org/channels/nixos-17.03-small nixos
  # nix-channel --update
  # nixos-rebuild switch


Resolution
==========

NixOS now does not add "tls_checkpeer no" to the LDAP configuration
when users.ldap.useTLS is enabled. Users who need this behavior can
add it back via the users.ldap.extraConfig option.
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEP+htk0GpxXspt+y6BhIdNm/pQ1wFAllv++MACgkQBhIdNm/p
Q1xbNA/+OC/0YePgyqJ3YCoFML8j7B23EM75DJcAemiaeKdxvzFZQc2v1SQp6POX
e3dq0RJ8RR5k9JRqHxYF4/lBMe5McUdL6nFVRVA8AJLY5Dsdeqq41Fpg54I2KmZI
+oVZqcNcOYNdQB0jr5vDC/1dOOvfwUxxfYD+xtaiRn+ELTH/tcQe9oU/2O/nz5Nl
JlcjRPsxwRI1DsZeq5Cp+jcCO0GsJOWrCO6h6gkQheq5vNVhOD4+WYjvsRVYsG45
30hVrC1D/tR/VJSXx6CaUEbNMEJ3R4N+eyXq7uDH6WmYEuaOzPqgQqXprKKYVA9c
Hdh9gWGXTuJR5khMll+5NeY+BVRr/kwYsaHg+fdlcpbTHox/z/7St/Jlbj83jxDt
bU8AnsvMbOeuk5Ynsuqfk7Vrg1uh6pUc35N+is2MCKR15NO/lcvSUFSpoecp8pAC
cJPtIp6oaicXBUF+CklHmuy3v43q2gbckfp4fIkNoq+Pxu80EIXc6Cy9mIIvgbx7
JmZ/UxzLW3GHtDWiqFXTtrLhJC20Su5jXC+9jnPiWfBjQKw6L2sdVakugYLmXzAQ
7EXs4OxccvxFuKxRiG5QbeZiyrzgdkeMOICWe+mGbHzTJrjl8wLG2awYC1J50pEr
TNQoZNK7pQCHe+G6ponJJig9GNMNWaheInsJ+pShqIYxmhr/qRo=
=YvT+
-----END PGP SIGNATURE-----
