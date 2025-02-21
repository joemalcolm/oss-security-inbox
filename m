Received: (qmail 8168 invoked by uid 550); 21 Feb 2025 16:45:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17868 invoked from network); 21 Feb 2025 12:22:51 -0000
Date: Fri, 21 Feb 2025 13:22:40 +0100 (CET)
From: Jordy Zomer <jordy@pwning.systems>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"qsa@qualys.com" <qsa@qualys.com>
Message-ID: <1167011785.77274.1740140560949@privateemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev73
X-Originating-Client: open-xchange-appsuite
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [oss-security] MitM attack against OpenSSH's
 VerifyHostKeyDNS-enabled client

Hey all,

First of all, cool findings! I've been working on the CodeQL query and have a revised version that I think improves accuracy and might offer some performance gains (though I haven't done rigorous benchmarking). The key change is the use of `StackVariableReachability` and making sure that there's a path where `var` is not reassigned before taking a `goto _;`. Ran it on an older database, found some of the same bugs with no false-positives so far.


This is the revised query.
```
import cpp 
import semmle.code.cpp.controlflow.StackVariableReachability


// A call that can return 0
class CallReturningOK extends FunctionCall {
    CallReturningOK() {
     exists(ReturnStmt ret | this.getTarget() = ret.getEnclosingFunction() and ret.getExpr().getValue().toInt() = 0)
    }
  
  }

class GotoWrongRetvalConfiguration extends StackVariableReachability {
    GotoWrongRetvalConfiguration() { this = "GotoWrongRetvalConfiguration" }

    // Source is an assigment of an "OK" return value to an access of v
    // To not get FP's we get a false successor
    override predicate isSource(ControlFlowNode node, StackVariable v) {
        exists(AssignExpr ae, IfStmt ifst | ae.getRValue() instanceof CallReturningOK 
        and v.getAnAccess() = ae.getLValue() and  ifst.getCondition().getAChild() = ae  and
        ifst.getCondition().getAFalseSuccessor() = node)
        
    }

    // Our intermediate sink is a `goto _` statement, but it should have a successor that's a return of `v`
    override predicate isSink(ControlFlowNode node, StackVariable v) {
        exists(ReturnStmt ret | ret.getExpr() = v.getAnAccess() and
        node instanceof GotoStmt and node.getASuccessor+() = ret.getExpr())
    }

    // We don't want `v` to be reassigned
    override predicate  isBarrier(ControlFlowNode node, StackVariable v) {
        exists(AssignExpr ae | ae.getLValue() = node and v.getAnAccess() = node)
    }
}

from ControlFlowNode source, ControlFlowNode sink, GotoWrongRetvalConfiguration conf, Variable v, Expr retval
where
// We want a call that can `return 0` to reach a goto that has a ret of `v` sucessor
conf.reaches(source, v, sink)
and 
// We don't want `v` to be reassigned after the goto
not conf.isBarrier(sink.getASuccessor+(), v)
// this goes from our intermediate sink to retval
and sink.getASuccessor+() = retval
// Just making sure that it's returning v
and exists(ReturnStmt ret | ret.getExpr() = retval and retval = v.getAnAccess())
select retval.getEnclosingFunction(), source, sink, retval
```


Hope that's helpful, please reach out if you have any questions :)

Cheers,

Jordy Zomer
