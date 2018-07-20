X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1761" "Thursday" "19" "July" "2018" "21:13:42" "-0400" "Iris Morelle" "shadowm2006@gmail.com" "<2222700.WJvhPnAmYh@hanacore>" "56" "[oss-security] CVE request: Wesnoth arbitrary code execution/sandbox escape" nil nil nil "7" "2018072001:13:42" "[oss-security] CVE request: Wesnoth arbitrary code execution/sandbox escape" (number mark "U       shadowm2006@ Jul 19   56/1761  " thread-indent "\"[oss-security] CVE request: Wesnoth arbitrary code execution/sandbox escape\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3539 invoked by uid 550); 20 Jul 2018 08:16:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17984 invoked from network); 20 Jul 2018 01:13:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q6mbHJPvgyqf9tpZCd0mBtFL9eAoM5slziOrFcKkDFo=;
        b=QYvfyVKMM0BJFfES4yaOk6KPWvTKYnJFv1+PDZKpYbAwx9WCCGqDPjXf6IkbeQIHyp
         i7DHPgsVQ47qf3cRi+cw3Q8AZvgL9iXn9DY+z2Wk1owexB6gKhAWBJoKyHdzhw4I7e/a
         Y5mQGkGaeTBzN+/FnOuXsxuuo+qwXpQ3Hl4Hkng9vlMs36gc43VwUM/zqs9PdqUsSYsR
         iK9BCEvxZt4e2ApCtwLkNBf0NTqLMyiKd9JFku9qtya2CLSYEZLuWzTrKMIo/3D+UqG5
         LuV8uEFEFGfskPa5HQo/BwUGw6RsTxAXtVpa3aZ0cOLRCee5iutqvmX/Ue4ED6E4QhOn
         E1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q6mbHJPvgyqf9tpZCd0mBtFL9eAoM5slziOrFcKkDFo=;
        b=eXGj2W+nYjqXO4UIpcI53JuVWjbxynWkp0gPnexzAT+yCvxwGycPh4pwBwqAmyzMGF
         YaM87yv3NU+olNYgOOShvwShbqA2oqKG0PXYvDN6xmLzgYjKn4lxSOErCUltJPjFa89Z
         hC/SnOLM3W7c9/WXG8Xq0gQoswcMpWw4C4Rbn+kx93dbajMGnRbfrKXdPTlqPzJPx3Zl
         rgRp7D1UQE6M2Jfdk7O54TIvU/rx4FOtnz+gipm18ICwthBjiFduh+QkHto/RIvk6jlj
         ZbH1XOl6VeIiaQQjnl6fNMsaj8JeWCzHWr0bj9qwf/FvMrfE5fBBQEPWrWJF/zJbGm8M
         0tyA==
X-Gm-Message-State: AOUpUlEfqMezyPTcTjEQsA4OqEvSXOSMNfjkZgCixqw9PtgyZ50Udrao
	yGDVhd+cbTqphYMXLvsk264UGCLh
X-Google-Smtp-Source: AAOMgpfeBSego2NyKSAbs2nNSCGEsO07oxn0qVYqP4GwPvad/+hiLWsNkJJdgfzRr85NRUiNt8nXeQ==
X-Received: by 2002:ac8:3274:: with SMTP id y49-v6mr3185qta.194.1532049227925;
        Thu, 19 Jul 2018 18:13:47 -0700 (PDT)
From: Iris Morelle <shadowm2006@gmail.com>
To: oss-security@lists.openwall.com
Date: Thu, 19 Jul 2018 21:13:42 -0400
Message-ID: <2222700.WJvhPnAmYh@hanacore>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: [oss-security] CVE request: Wesnoth arbitrary code execution/sandbox escape

Hello,

We've found an issue in our software, "The Battle for Wesnoth", which allow=
s=20
arbitrary code execution by exploiting a vulnerability within the Lua=20
scripting language engine which allows escaping existing sandbox measures i=
n=20
place and executing untrusted bytecode.

We would like to have a CVE id assigned to this issue if possible.


Description:

The Wesnoth game engine uses the vanilla Lua programming language library t=
o=20
implement most of its game scripting capabilities. Lua is able to execute=20
bytecode using its load(), loadfile(), loadstring(), dofile(), and require(=
)=20
functions. Wesnoth in particular exposes load(), loadstring(), and two=20
wrappers for the former in the form of wesnoth.dofile() and wesnoth.require=
(),=20
without making sure to disable the ability to load and execute bytecode.

It has been documented [1] that it is possible to exploit the Lua load=20
functions to execute untrusted bytecode that can then bypass sandbox measur=
es,=20
or even gain and abuse special knowledge about the process' memory layout.

  [1] https://gist.github.com/corsix/6575486

Wesnoth executes Lua code from untrusted local files either written by play=
ers=20
or downloaded through a player content distribution server, as well as from=
=20
data sent over the network in multiplayer games; thus this vulnerability is=
=20
rather severe as it can be exploited remotely by malicious parties without =
the=20
user's knowledge.

This issue was found by Daniel Dr=E4ger, a Wesnoth developer, and author of=
 an=20
unmerged patch fixing it.


Affected versions:

All existing versions of Wesnoth with the Lua scripting capability, i.e.=20
versions 1.7.0 through 1.14.3.

--=20
Regards
  Iris Morelle, Wesnoth developer


