<%@ page import="aei.*" %>
<html>
  <head>
    <meta name="layout" content="hctrauma-modal" />
    <title><g:message code="aeRegistry.list.title" /></title>
    
    <style>
    td {
      font-size: 11px;
    }
    
    <%--
      td, th {
        padding: 5px;
      }
      th {
        background-color: f0f0ff;
      }
      .odd {
        background-color: #eeeeee;
      }
      .even {
        background-color: #dfdfdf;
      }
    --%>
    
    </style>
  </head>
  <body>
    <h1><g:message code="aeRegistry.list.title" /></h1>
    
    <div class="list">
      <table>
        <thead>
          <tr>
            <th><g:message code="aeRegistry.list.label.localAE" /></th>
            <th><g:message code="aeRegistry.list.label.localIP" /></th>
            <th><g:message code="aeRegistry.list.label.localPort" /></th>
            <th><g:message code="aeRegistry.list.label.remoteAE" /></th>
            <th><g:message code="aeRegistry.list.label.remoteIP" /></th>
            <th><g:message code="aeRegistry.list.label.remotePort" /></th>
            <th><g:message code="aeRegistry.list.label.remoteWADOPort" /></th>
            <th><g:message code="aeRegistry.list.label.remoteWADOPath" /></th>
            <th><g:message code="aeRegistry.list.label.badConnectionCount" /></th>
            <th><g:message code="aeRegistry.list.label.description" /></th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <g:each in="${list}" status="i" var="reg">
            <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
              <td>${reg.localAETitle}</td>
              <td>${reg.localIP}</td>
              <td>${reg.localPort}</td>
              <td>${reg.remoteAETitle}</td>
              <td>${reg.remoteIP}</td>
              <td>${reg.remotePort}</td>
              <td>${reg.remoteWADOPort}</td>
              <td>${reg.remoteWADOPath}</td>
              <td>${reg.badConnectionCount}</td>
              <td>${reg.description?.encodeAsHTML()}</td>
              <td>
                <%-- NO QUIERO MOSTRAR ACCION SHOW PORQUE ESTA SCAFFOLDEADA,
                     igual toda la info se muestra en el listado.
                
                [<g:link class="button" controller="aeRegistry" action="show" id="${reg.id}">
                  <g:message code="aeRegistry.action.show" />
                </g:link>]
                
                --%>
                
                <%-- TESTS
                [<g:link class="button" controller="aeRegistry" action="qr" id="${reg.id}">
                  <g:message code="aeRegistry.action.qr" />
                </g:link>]
                
                <g:wadoUrl studyUid="ssss" seriesUid="uuuu" objectUid="oooo" reg="${reg}">
                  Imagen
                </g:wadoUrl>
                --%>
              </td>
            </tr>
          </g:each>
        </tbody>
      </table> 
    </div>

  </body>
</html>
