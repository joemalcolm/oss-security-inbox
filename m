Received: (qmail 3401 invoked by uid 550); 6 Mar 2025 21:25:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6111 invoked from network); 6 Mar 2025 21:15:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741295720; x=1741900520; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yy0KIs0gt24gFOeNIqLqNtwqwKkyRsb+KmtZNtojGjI=;
        b=RLNAHpnzDB737OIG7Ydqo5Skamqi59U6DkErCbn51orcCA89E13f/AdvN4kt0Jzeh9
         x+N9GAKkaggLxWeRGZjYiMnbS1krSQVGJoyZyMR5R92hgKejJ/enB5hyCgL1UfRANFcb
         lBGrVSYUyMGCpaRLok4imwSEo+w2W6ELZhupMpQ9cM+FDTonkTaNv2gajoaiy7pCoI+c
         iTCymFdktyNvZNbJIv2tPgBKSIrNpCWSqGRbx6ZunEOaamIltsXh984iWyG5UkcnP1iY
         wPgE2uOjHzPVBdlHS+Qt80ZZ4fFPO0S9ZTQ+cDU5EVrvBU+014L/+r0aauCfTRkMOs1G
         8PZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741295720; x=1741900520;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yy0KIs0gt24gFOeNIqLqNtwqwKkyRsb+KmtZNtojGjI=;
        b=gM02Q1C4ZuhB0XJhg/kut08nb6TyX6DkJYldgC4D0HssTD6FSUBGBt0g73DzPG1ygK
         +zxjPhUJSjrBgTp46e8RkdlX9nMgbtnL4nPBiLzVOy8y92pCg+ItSF7d6NmUivVxqKIN
         7zznChbF3XHMNbv32+Ag5pGKTHcepgeiou80vMqlUe3wgOalQWyK90/HiDvFS6i+W0le
         4C6c4UCT7CEhPR6tkSiveApELtmp+gkCioP5WZ/jiEU+vch+fww/gvaKtJKPxR6S9nz6
         If5oQofX9qK8TCIDTH8afWWCesnU6kROqKCvu4n8/U5I6yBnpftkuRkYwPmxwvsKICrH
         DUlg==
X-Gm-Message-State: AOJu0Yy700nMHudFOUvzyovXAru7UPK8OdIEuQWsWYUVoOESLihSNSjp
	NrUcD8Eei7hCoAhrbIHz1l8mU9OFjuMjaoh5VcY65iaRhJeXVhTg8JswBOsLkM5G/UZspQyIKCx
	P7h9SlSM6ykSbeguH8KISqodiGxcWPgdP
X-Gm-Gg: ASbGnctx2UOzNjTYjN0ZXXtewwzg6tLdAMZeENTjt3+jdcTUtFe9CTgzjDXd5T8Cjm1
	NcnJpziOe/qthwsFTruKcrfWUjV41U/rAzhiIZMRgAp5fREkKnMjNDaS7FFF+yDtnud+yHrHbW4
	IXzsL2SbTQQ/astQ2fCjf7f22T
X-Google-Smtp-Source: AGHT+IFfs87cbGBrdl8cVovJlHMTkLEFp8NWzQw2aX40+qGqB4sEcKzuO93DcUlMBzbV5FeuzznpJsMjrhz/BivGLTo=
X-Received: by 2002:a05:6402:27d2:b0:5e0:7fc9:8605 with SMTP id
 4fb4d7f45d1cf-5e5e08ebda7mr1085670a12.6.1741295719580; Thu, 06 Mar 2025
 13:15:19 -0800 (PST)
MIME-Version: 1.0
References: <1167011785.77274.1740140560949@privateemail.com> <20250221175431.GB2391@localhost.localdomain>
In-Reply-To: <20250221175431.GB2391@localhost.localdomain>
From: =?UTF-8?Q?Buher=C3=A1tor?= <buherator@gmail.com>
Date: Thu, 6 Mar 2025 22:15:08 +0100
X-Gm-Features: AQ5f1JoY0WTlTyh9KyQmrCTmmirqSLw7MJhpXJI_wTE1b_2P2cYewR0jpJlPbKo
Message-ID: <CAAyDpL9t6DA06f_vpREvW1FiXVntQr3FRh6iA+smeg+2muiKQw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] MitM attack against OpenSSH's VerifyHostKeyDNS-enabled
 client

Hi all,

I also gave this a shot and came up with this query that uses
data-flow tracking and also uses StackVariableReachability as
suggested by Jordy. The results match the original closely, and based
on my measurements it is more performant, esp. on larger codebases
(tested with OpenSSL):

```ql
import cpp
import semmle.code.cpp.controlflow.StackVariableReachability
import semmle.code.cpp.dataflow.new.DataFlow

// variable is not mentioned inside if
predicate notChildOfIf(Variable v, IfStmt i){
    not exists (VariableAccess a | a.getTarget()=v  and
i.getEnclosingStmt().getAChild*()=a.getEnclosingStmt())
}

// if leads to goto on its true path
predicate ifToGoto(IfStmt i, GotoStmt g){
    g.hasName() and
    i.getThen().getAChild*()=g
}

// Return statement accesses v
predicate isProperReturn(Variable v, ReturnStmt ret){
    exists(VariableAccess a | a.getTarget() = v and not a.isModified()
and a.getEnclosingStmt() = ret.getChildStmt*())
}

class InitToFaultyIfConfiguration extends StackVariableReachability {
    InitToFaultyIfConfiguration() { this = "InitToFaultyIfConfiguration" }

    override predicate isSource(ControlFlowNode node, StackVariable v) {
        // We are interested in all variable accesses
        // Note: Initializers are not VariableAccess!
        exists(VariableAccess ae | v = ae.getTarget() and
ae.isModified() and ae = node)

    }

    override predicate isSink(ControlFlowNode node, StackVariable v) {
        exists(ReturnStmt ret, GotoStmt goto, IfStmt i | node = i and
// Source is an IfStmt
               i.getEnclosingFunction() =
v.getAnAssignment().getEnclosingStmt().getEnclosingFunction() and //
IfStmt and StackVariable are in the same function
               isProperReturn(v,ret) and // Return statement accesses v
               notChildOfIf(v, i) and // return variable not part of
this if statement
               ifToGoto(i, goto) and // if leads to goto
               goto.getASuccessor+()=ret // goto leads to relevant return
        )
    }

    override predicate  isBarrier(ControlFlowNode node, StackVariable v) {
        exists(VariableAccess ae | v = ae.getTarget() and
ae.isModified() and ae = node)
    }
}

from ControlFlowNode sourceInit, ControlFlowNode sinkIf,
InitToFaultyIfConfiguration confInitIf, LocalVariable v, ReturnStmt
ret,
DataFlow::Node sinkRet, DataFlow::Node sourceDef
where confInitIf.reaches(sourceInit, v, sinkIf) and // A local
variable reaches a faulty if in the CFG
  isProperReturn(v, ret) and // the variable is used as part of the return
  sourceDef.asExpr() = v.getAnAssignment() and // we are looking for
data-flows from the return variable ...
  sinkRet.asExpr() = ret.getAChild() and // ... to the return statement
  DataFlow::localFlow(sourceDef, sinkRet) // we are only interested in
value-preserving, local data-flows
select sourceInit, sinkIf,
sinkIf.getLocation().getFile().getBaseName()+":"+sinkIf.getLocation().getStartLine()+":"+sinkIf.getLocation().getStartColumn()
```

I also wrote (much) about the development process to help tweaking the
query further:

  https://scrapco.de/blog/dreams-in-codeql-quest-for-the-perfect-goto.html

Code with additional data:

  https://github.com/v-p-b/codeql-verify-goto

I hope you'll find this useful. If you spot any errors or have other
questions/comments, please let me know!

Regards,

buherator

On Fri, 21 Feb 2025 at 18:57, Qualys Security Advisory <qsa@qualys.com> wrote:
>
> Hi Jordy,
>
> On Fri, Feb 21, 2025 at 01:22:40PM +0100, Jordy Zomer wrote:
> > Hope that's helpful, please reach out if you have any questions :)
>
> Woo-hoo, awesome work, thank you very much for sharing it! We are
> looking into it now (and learning from it).
>
> Thanks again! With best regards,
>
> --
> the Qualys Security Advisory team
