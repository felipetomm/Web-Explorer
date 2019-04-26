/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.webexplorer.screen;

import java.text.DateFormat;
import java.util.Date;
import javax.swing.JOptionPane;

/**
 *
 * @author Erick
 */
public class ScreenPrincipal extends javax.swing.JFrame {

   
    public ScreenPrincipal() {
        initComponents();
    }

   
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jMenuBar2 = new javax.swing.JMenuBar();
        jMenu3 = new javax.swing.JMenu();
        jMenu4 = new javax.swing.JMenu();
        desktop = new javax.swing.JDesktopPane();
        jLabel1 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        lblData = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        mnUsuario = new javax.swing.JMenu();
        mnUsuarioCadastrar = new javax.swing.JMenuItem();
        mnUsuarioConsultar = new javax.swing.JMenuItem();
        mnGrupo = new javax.swing.JMenu();
        mnGrupoConsultar = new javax.swing.JMenuItem();
        mnRelatorio = new javax.swing.JMenu();
        mnRelatorioConsultar = new javax.swing.JMenuItem();
        mnOpcao = new javax.swing.JMenu();
        mnOpcaoSair = new javax.swing.JMenuItem();
        mnAjuda = new javax.swing.JMenu();
        mnAjudaSobre = new javax.swing.JMenuItem();

        jMenu3.setText("File");
        jMenuBar2.add(jMenu3);

        jMenu4.setText("Edit");
        jMenuBar2.add(jMenu4);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("WebExplorer - Monitor");
        setBackground(new java.awt.Color(255, 255, 255));
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowActivated(java.awt.event.WindowEvent evt) {
                formWindowActivated(evt);
            }
        });

        desktop.setBackground(new java.awt.Color(0, 153, 153));

        javax.swing.GroupLayout desktopLayout = new javax.swing.GroupLayout(desktop);
        desktop.setLayout(desktopLayout);
        desktopLayout.setHorizontalGroup(
            desktopLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 533, Short.MAX_VALUE)
        );
        desktopLayout.setVerticalGroup(
            desktopLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        jLabel1.setIcon(new javax.swing.ImageIcon("C:\\Users\\suporte3.AUTOMAX\\Desktop\\Icone\\images.png")); // NOI18N

        lblData.setText("Data");

        mnUsuario.setText("Usuário");

        mnUsuarioCadastrar.setText("Cadastrar");
        mnUsuarioCadastrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mnUsuarioCadastrarActionPerformed(evt);
            }
        });
        mnUsuario.add(mnUsuarioCadastrar);

        mnUsuarioConsultar.setText("Consultar");
        mnUsuario.add(mnUsuarioConsultar);

        jMenuBar1.add(mnUsuario);

        mnGrupo.setText("Grupo");

        mnGrupoConsultar.setText("Consultar");
        mnGrupoConsultar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mnGrupoConsultarActionPerformed(evt);
            }
        });
        mnGrupo.add(mnGrupoConsultar);

        jMenuBar1.add(mnGrupo);

        mnRelatorio.setText("Relatórios");

        mnRelatorioConsultar.setText("Consultar");
        mnRelatorio.add(mnRelatorioConsultar);

        jMenuBar1.add(mnRelatorio);

        mnOpcao.setText("Opção");

        mnOpcaoSair.setText("Sair");
        mnOpcaoSair.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mnOpcaoSairActionPerformed(evt);
            }
        });
        mnOpcao.add(mnOpcaoSair);

        jMenuBar1.add(mnOpcao);

        mnAjuda.setText("Ajuda");

        mnAjudaSobre.setText("Sobre");
        mnAjudaSobre.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mnAjudaSobreActionPerformed(evt);
            }
        });
        mnAjuda.add(mnAjudaSobre);

        jMenuBar1.add(mnAjuda);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(desktop, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(14, 14, 14)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 214, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblData)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addComponent(jLabel1)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 81, Short.MAX_VALUE)
                .addComponent(lblData)
                .addGap(30, 30, 30)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 235, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(92, 92, 92))
            .addComponent(desktop)
        );

        setBounds(0, 0, 787, 533);
    }// </editor-fold>//GEN-END:initComponents

    private void mnAjudaSobreActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mnAjudaSobreActionPerformed
        // TODO add your handling code here:
        ScreenSobre sobre = new ScreenSobre();
        sobre.setVisible(true);
    }//GEN-LAST:event_mnAjudaSobreActionPerformed

    private void formWindowActivated(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowActivated
    // TODO add your handling code here:
        Date data = new Date();
        DateFormat formatar = DateFormat.getDateInstance(DateFormat.SHORT); // fomatar data e hora
         lblData.setText(formatar.format(data));
    }//GEN-LAST:event_formWindowActivated

    private void mnOpcaoSairActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mnOpcaoSairActionPerformed
        // SAIR DO SISTEMA
        int sair = JOptionPane.showConfirmDialog(null, "Tem certeza que deseja sair?", "Atenção", JOptionPane.YES_NO_OPTION);
        
        if (sair == JOptionPane.YES_OPTION){
            System.exit(0);
        }
    }//GEN-LAST:event_mnOpcaoSairActionPerformed

    private void mnUsuarioCadastrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mnUsuarioCadastrarActionPerformed
        // TODO add your handling code here:
        ScreenUsuarioCadastro cadastro = new ScreenUsuarioCadastro();
        cadastro.setVisible(true);
        desktop.add(cadastro);
        
    }//GEN-LAST:event_mnUsuarioCadastrarActionPerformed

    private void mnGrupoConsultarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mnGrupoConsultarActionPerformed
        
        ScreenGrupo grupo = new ScreenGrupo();
        grupo.setVisible(true);
        desktop.add(grupo);
    }//GEN-LAST:event_mnGrupoConsultarActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ScreenPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ScreenPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ScreenPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ScreenPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ScreenPrincipal().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JDesktopPane desktop;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenu jMenu4;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuBar jMenuBar2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JLabel lblData;
    private javax.swing.JMenu mnAjuda;
    private javax.swing.JMenuItem mnAjudaSobre;
    private javax.swing.JMenu mnGrupo;
    private javax.swing.JMenuItem mnGrupoConsultar;
    private javax.swing.JMenu mnOpcao;
    private javax.swing.JMenuItem mnOpcaoSair;
    private javax.swing.JMenu mnRelatorio;
    private javax.swing.JMenuItem mnRelatorioConsultar;
    private javax.swing.JMenu mnUsuario;
    private javax.swing.JMenuItem mnUsuarioCadastrar;
    private javax.swing.JMenuItem mnUsuarioConsultar;
    // End of variables declaration//GEN-END:variables
}
