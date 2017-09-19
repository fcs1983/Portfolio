namespace wfaBancoDados
{
    partial class frmAlunos
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmAlunos));
            this.lblMatricula = new System.Windows.Forms.Label();
            this.lblNome = new System.Windows.Forms.Label();
            this.lblDataNasc = new System.Windows.Forms.Label();
            this.lblingresso = new System.Windows.Forms.Label();
            this.lblCurso = new System.Windows.Forms.Label();
            this.txtMatricula = new System.Windows.Forms.TextBox();
            this.txtDatanasc = new System.Windows.Forms.TextBox();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.txtIngresso = new System.Windows.Forms.TextBox();
            this.txtCurso = new System.Windows.Forms.TextBox();
            this.grpSexo = new System.Windows.Forms.GroupBox();
            this.rdbFem = new System.Windows.Forms.RadioButton();
            this.rdbMasc = new System.Windows.Forms.RadioButton();
            this.grpEnd = new System.Windows.Forms.GroupBox();
            this.lblCEP = new System.Windows.Forms.Label();
            this.lblEnd = new System.Windows.Forms.Label();
            this.lblComp = new System.Windows.Forms.Label();
            this.lblBairro = new System.Windows.Forms.Label();
            this.lblMun = new System.Windows.Forms.Label();
            this.lblLog = new System.Windows.Forms.Label();
            this.lblNro = new System.Windows.Forms.Label();
            this.lblEstado = new System.Windows.Forms.Label();
            this.txtCEP = new System.Windows.Forms.TextBox();
            this.txtLog = new System.Windows.Forms.TextBox();
            this.txtEnd = new System.Windows.Forms.TextBox();
            this.txtComp = new System.Windows.Forms.TextBox();
            this.txtBairro = new System.Windows.Forms.TextBox();
            this.txtMun = new System.Windows.Forms.TextBox();
            this.txtNro = new System.Windows.Forms.TextBox();
            this.cboEstado = new System.Windows.Forms.ComboBox();
            this.alunosDataSet = new wfaBancoDados.AlunosDataSet();
            this.tabela_alunoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tabela_alunoTableAdapter = new wfaBancoDados.AlunosDataSetTableAdapters.Tabela_alunoTableAdapter();
            this.tableAdapterManager = new wfaBancoDados.AlunosDataSetTableAdapters.TableAdapterManager();
            this.tabela_alunoBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.tabela_alunoDataGridView = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn10 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn11 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn12 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn13 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn14 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtSexo = new System.Windows.Forms.TextBox();
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.tabela_alunoBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.grpSexo.SuspendLayout();
            this.grpEnd.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.alunosDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tabela_alunoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tabela_alunoBindingNavigator)).BeginInit();
            this.tabela_alunoBindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tabela_alunoDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // lblMatricula
            // 
            this.lblMatricula.AutoSize = true;
            this.lblMatricula.Location = new System.Drawing.Point(23, 34);
            this.lblMatricula.Name = "lblMatricula";
            this.lblMatricula.Size = new System.Drawing.Size(50, 13);
            this.lblMatricula.TabIndex = 0;
            this.lblMatricula.Text = "Matricula";
            // 
            // lblNome
            // 
            this.lblNome.AutoSize = true;
            this.lblNome.Location = new System.Drawing.Point(268, 34);
            this.lblNome.Name = "lblNome";
            this.lblNome.Size = new System.Drawing.Size(35, 13);
            this.lblNome.TabIndex = 1;
            this.lblNome.Text = "Nome";
            // 
            // lblDataNasc
            // 
            this.lblDataNasc.AutoSize = true;
            this.lblDataNasc.Location = new System.Drawing.Point(23, 60);
            this.lblDataNasc.Name = "lblDataNasc";
            this.lblDataNasc.Size = new System.Drawing.Size(89, 13);
            this.lblDataNasc.TabIndex = 2;
            this.lblDataNasc.Text = "Data Nascimento";
            // 
            // lblingresso
            // 
            this.lblingresso.AutoSize = true;
            this.lblingresso.Location = new System.Drawing.Point(256, 60);
            this.lblingresso.Name = "lblingresso";
            this.lblingresso.Size = new System.Drawing.Size(47, 13);
            this.lblingresso.TabIndex = 3;
            this.lblingresso.Text = "Ingresso";
            // 
            // lblCurso
            // 
            this.lblCurso.AutoSize = true;
            this.lblCurso.Location = new System.Drawing.Point(230, 108);
            this.lblCurso.Name = "lblCurso";
            this.lblCurso.Size = new System.Drawing.Size(34, 13);
            this.lblCurso.TabIndex = 4;
            this.lblCurso.Text = "Curso";
            // 
            // txtMatricula
            // 
            this.txtMatricula.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_alunoBindingSource, "Matricula", true));
            this.txtMatricula.Location = new System.Drawing.Point(118, 31);
            this.txtMatricula.Name = "txtMatricula";
            this.txtMatricula.Size = new System.Drawing.Size(100, 20);
            this.txtMatricula.TabIndex = 5;
            // 
            // txtDatanasc
            // 
            this.txtDatanasc.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_alunoBindingSource, "Data_Nasc", true, System.Windows.Forms.DataSourceUpdateMode.OnValidation, null, "d"));
            this.txtDatanasc.Location = new System.Drawing.Point(118, 57);
            this.txtDatanasc.Name = "txtDatanasc";
            this.txtDatanasc.Size = new System.Drawing.Size(100, 20);
            this.txtDatanasc.TabIndex = 6;
            // 
            // txtNome
            // 
            this.txtNome.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_alunoBindingSource, "Nome", true));
            this.txtNome.Location = new System.Drawing.Point(337, 31);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(100, 20);
            this.txtNome.TabIndex = 7;
            // 
            // txtIngresso
            // 
            this.txtIngresso.Location = new System.Drawing.Point(337, 57);
            this.txtIngresso.Name = "txtIngresso";
            this.txtIngresso.Size = new System.Drawing.Size(100, 20);
            this.txtIngresso.TabIndex = 8;
            // 
            // txtCurso
            // 
            this.txtCurso.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_alunoBindingSource, "cur_sgl", true));
            this.txtCurso.Location = new System.Drawing.Point(271, 105);
            this.txtCurso.Name = "txtCurso";
            this.txtCurso.Size = new System.Drawing.Size(100, 20);
            this.txtCurso.TabIndex = 9;
            // 
            // grpSexo
            // 
            this.grpSexo.Controls.Add(this.rdbMasc);
            this.grpSexo.Controls.Add(this.rdbFem);
            this.grpSexo.Location = new System.Drawing.Point(26, 95);
            this.grpSexo.Name = "grpSexo";
            this.grpSexo.Size = new System.Drawing.Size(156, 72);
            this.grpSexo.TabIndex = 10;
            this.grpSexo.TabStop = false;
            this.grpSexo.Text = "Sexo";
            // 
            // rdbFem
            // 
            this.rdbFem.AutoSize = true;
            this.rdbFem.Location = new System.Drawing.Point(27, 19);
            this.rdbFem.Name = "rdbFem";
            this.rdbFem.Size = new System.Drawing.Size(67, 17);
            this.rdbFem.TabIndex = 0;
            this.rdbFem.TabStop = true;
            this.rdbFem.Text = "Feminino";
            this.rdbFem.UseVisualStyleBackColor = true;
            this.rdbFem.CheckedChanged += new System.EventHandler(this.rdbFem_CheckedChanged);
            // 
            // rdbMasc
            // 
            this.rdbMasc.AutoSize = true;
            this.rdbMasc.Location = new System.Drawing.Point(27, 42);
            this.rdbMasc.Name = "rdbMasc";
            this.rdbMasc.Size = new System.Drawing.Size(73, 17);
            this.rdbMasc.TabIndex = 1;
            this.rdbMasc.TabStop = true;
            this.rdbMasc.Text = "Masculino";
            this.rdbMasc.UseVisualStyleBackColor = true;
            this.rdbMasc.CheckedChanged += new System.EventHandler(this.rdbMasc_CheckedChanged);
            // 
            // grpEnd
            // 
            this.grpEnd.Controls.Add(this.cboEstado);
            this.grpEnd.Controls.Add(this.txtNro);
            this.grpEnd.Controls.Add(this.txtMun);
            this.grpEnd.Controls.Add(this.txtBairro);
            this.grpEnd.Controls.Add(this.txtComp);
            this.grpEnd.Controls.Add(this.txtEnd);
            this.grpEnd.Controls.Add(this.txtLog);
            this.grpEnd.Controls.Add(this.txtCEP);
            this.grpEnd.Controls.Add(this.lblEstado);
            this.grpEnd.Controls.Add(this.lblNro);
            this.grpEnd.Controls.Add(this.lblLog);
            this.grpEnd.Controls.Add(this.lblMun);
            this.grpEnd.Controls.Add(this.lblBairro);
            this.grpEnd.Controls.Add(this.lblComp);
            this.grpEnd.Controls.Add(this.lblEnd);
            this.grpEnd.Controls.Add(this.lblCEP);
            this.grpEnd.Location = new System.Drawing.Point(26, 199);
            this.grpEnd.Name = "grpEnd";
            this.grpEnd.Size = new System.Drawing.Size(580, 204);
            this.grpEnd.TabIndex = 11;
            this.grpEnd.TabStop = false;
            this.grpEnd.Text = "Endereço";
            // 
            // lblCEP
            // 
            this.lblCEP.AutoSize = true;
            this.lblCEP.Location = new System.Drawing.Point(24, 35);
            this.lblCEP.Name = "lblCEP";
            this.lblCEP.Size = new System.Drawing.Size(28, 13);
            this.lblCEP.TabIndex = 12;
            this.lblCEP.Text = "CEP";
            // 
            // lblEnd
            // 
            this.lblEnd.AutoSize = true;
            this.lblEnd.Location = new System.Drawing.Point(24, 70);
            this.lblEnd.Name = "lblEnd";
            this.lblEnd.Size = new System.Drawing.Size(53, 13);
            this.lblEnd.TabIndex = 13;
            this.lblEnd.Text = "Endereço";
            // 
            // lblComp
            // 
            this.lblComp.AutoSize = true;
            this.lblComp.Location = new System.Drawing.Point(24, 102);
            this.lblComp.Name = "lblComp";
            this.lblComp.Size = new System.Drawing.Size(71, 13);
            this.lblComp.TabIndex = 14;
            this.lblComp.Text = "Complemento";
            // 
            // lblBairro
            // 
            this.lblBairro.AutoSize = true;
            this.lblBairro.Location = new System.Drawing.Point(24, 132);
            this.lblBairro.Name = "lblBairro";
            this.lblBairro.Size = new System.Drawing.Size(34, 13);
            this.lblBairro.TabIndex = 15;
            this.lblBairro.Text = "Bairro";
            // 
            // lblMun
            // 
            this.lblMun.AutoSize = true;
            this.lblMun.Location = new System.Drawing.Point(24, 167);
            this.lblMun.Name = "lblMun";
            this.lblMun.Size = new System.Drawing.Size(54, 13);
            this.lblMun.TabIndex = 16;
            this.lblMun.Text = "Município";
            // 
            // lblLog
            // 
            this.lblLog.AutoSize = true;
            this.lblLog.Location = new System.Drawing.Point(308, 35);
            this.lblLog.Name = "lblLog";
            this.lblLog.Size = new System.Drawing.Size(61, 13);
            this.lblLog.TabIndex = 17;
            this.lblLog.Text = "Logradouro";
            // 
            // lblNro
            // 
            this.lblNro.AutoSize = true;
            this.lblNro.Location = new System.Drawing.Point(432, 66);
            this.lblNro.Name = "lblNro";
            this.lblNro.Size = new System.Drawing.Size(24, 13);
            this.lblNro.TabIndex = 18;
            this.lblNro.Text = "Nro";
            // 
            // lblEstado
            // 
            this.lblEstado.AutoSize = true;
            this.lblEstado.Location = new System.Drawing.Point(432, 167);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(40, 13);
            this.lblEstado.TabIndex = 19;
            this.lblEstado.Text = "Estado";
            // 
            // txtCEP
            // 
            this.txtCEP.Location = new System.Drawing.Point(95, 32);
            this.txtCEP.Name = "txtCEP";
            this.txtCEP.Size = new System.Drawing.Size(205, 20);
            this.txtCEP.TabIndex = 12;
            // 
            // txtLog
            // 
            this.txtLog.Location = new System.Drawing.Point(373, 32);
            this.txtLog.Name = "txtLog";
            this.txtLog.Size = new System.Drawing.Size(100, 20);
            this.txtLog.TabIndex = 20;
            // 
            // txtEnd
            // 
            this.txtEnd.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_alunoBindingSource, "Rua_Av", true));
            this.txtEnd.Location = new System.Drawing.Point(95, 66);
            this.txtEnd.Name = "txtEnd";
            this.txtEnd.Size = new System.Drawing.Size(205, 20);
            this.txtEnd.TabIndex = 21;
            // 
            // txtComp
            // 
            this.txtComp.Location = new System.Drawing.Point(95, 99);
            this.txtComp.Name = "txtComp";
            this.txtComp.Size = new System.Drawing.Size(205, 20);
            this.txtComp.TabIndex = 22;
            // 
            // txtBairro
            // 
            this.txtBairro.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_alunoBindingSource, "Bairro", true));
            this.txtBairro.Location = new System.Drawing.Point(95, 129);
            this.txtBairro.Name = "txtBairro";
            this.txtBairro.Size = new System.Drawing.Size(205, 20);
            this.txtBairro.TabIndex = 23;
            // 
            // txtMun
            // 
            this.txtMun.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_alunoBindingSource, "Cidade", true));
            this.txtMun.Location = new System.Drawing.Point(95, 160);
            this.txtMun.Name = "txtMun";
            this.txtMun.Size = new System.Drawing.Size(205, 20);
            this.txtMun.TabIndex = 24;
            // 
            // txtNro
            // 
            this.txtNro.Location = new System.Drawing.Point(486, 63);
            this.txtNro.Name = "txtNro";
            this.txtNro.Size = new System.Drawing.Size(65, 20);
            this.txtNro.TabIndex = 25;
            // 
            // cboEstado
            // 
            this.cboEstado.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_alunoBindingSource, "Estado", true));
            this.cboEstado.FormattingEnabled = true;
            this.cboEstado.Items.AddRange(new object[] {
            "São Paulo - SP",
            "Rio de Janeiro - RJ",
            "Pará - PA"});
            this.cboEstado.Location = new System.Drawing.Point(479, 164);
            this.cboEstado.Name = "cboEstado";
            this.cboEstado.Size = new System.Drawing.Size(72, 21);
            this.cboEstado.TabIndex = 26;
            // 
            // alunosDataSet
            // 
            this.alunosDataSet.DataSetName = "AlunosDataSet";
            this.alunosDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tabela_alunoBindingSource
            // 
            this.tabela_alunoBindingSource.DataMember = "Tabela aluno";
            this.tabela_alunoBindingSource.DataSource = this.alunosDataSet;
            // 
            // tabela_alunoTableAdapter
            // 
            this.tabela_alunoTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.Tabela_alunoTableAdapter = this.tabela_alunoTableAdapter;
            this.tableAdapterManager.Tabela_cursosTableAdapter = null;
            this.tableAdapterManager.UpdateOrder = wfaBancoDados.AlunosDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // tabela_alunoBindingNavigator
            // 
            this.tabela_alunoBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.tabela_alunoBindingNavigator.BindingSource = this.tabela_alunoBindingSource;
            this.tabela_alunoBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.tabela_alunoBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.tabela_alunoBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.bindingNavigatorAddNewItem,
            this.bindingNavigatorDeleteItem,
            this.tabela_alunoBindingNavigatorSaveItem});
            this.tabela_alunoBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.tabela_alunoBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.tabela_alunoBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.tabela_alunoBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.tabela_alunoBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.tabela_alunoBindingNavigator.Name = "tabela_alunoBindingNavigator";
            this.tabela_alunoBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.tabela_alunoBindingNavigator.Size = new System.Drawing.Size(690, 25);
            this.tabela_alunoBindingNavigator.TabIndex = 12;
            this.tabela_alunoBindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // tabela_alunoDataGridView
            // 
            this.tabela_alunoDataGridView.AutoGenerateColumns = false;
            this.tabela_alunoDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.tabela_alunoDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4,
            this.dataGridViewTextBoxColumn5,
            this.dataGridViewTextBoxColumn6,
            this.dataGridViewTextBoxColumn7,
            this.dataGridViewTextBoxColumn8,
            this.dataGridViewTextBoxColumn9,
            this.dataGridViewTextBoxColumn10,
            this.dataGridViewTextBoxColumn11,
            this.dataGridViewTextBoxColumn12,
            this.dataGridViewTextBoxColumn13,
            this.dataGridViewTextBoxColumn14});
            this.tabela_alunoDataGridView.DataSource = this.tabela_alunoBindingSource;
            this.tabela_alunoDataGridView.Location = new System.Drawing.Point(377, 11);
            this.tabela_alunoDataGridView.Name = "tabela_alunoDataGridView";
            this.tabela_alunoDataGridView.Size = new System.Drawing.Size(300, 220);
            this.tabela_alunoDataGridView.TabIndex = 13;
            this.tabela_alunoDataGridView.Visible = false;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "Matricula";
            this.dataGridViewTextBoxColumn1.HeaderText = "Matricula";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "Nome";
            this.dataGridViewTextBoxColumn2.HeaderText = "Nome";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "Email";
            this.dataGridViewTextBoxColumn3.HeaderText = "Email";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "Data_Nasc";
            this.dataGridViewTextBoxColumn4.HeaderText = "Data_Nasc";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "Sexo";
            this.dataGridViewTextBoxColumn5.HeaderText = "Sexo";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.DataPropertyName = "Rua_Av";
            this.dataGridViewTextBoxColumn6.HeaderText = "Rua_Av";
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.DataPropertyName = "Bairro";
            this.dataGridViewTextBoxColumn7.HeaderText = "Bairro";
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            // 
            // dataGridViewTextBoxColumn8
            // 
            this.dataGridViewTextBoxColumn8.DataPropertyName = "Cidade";
            this.dataGridViewTextBoxColumn8.HeaderText = "Cidade";
            this.dataGridViewTextBoxColumn8.Name = "dataGridViewTextBoxColumn8";
            // 
            // dataGridViewTextBoxColumn9
            // 
            this.dataGridViewTextBoxColumn9.DataPropertyName = "Estado";
            this.dataGridViewTextBoxColumn9.HeaderText = "Estado";
            this.dataGridViewTextBoxColumn9.Name = "dataGridViewTextBoxColumn9";
            // 
            // dataGridViewTextBoxColumn10
            // 
            this.dataGridViewTextBoxColumn10.DataPropertyName = "Nota1";
            this.dataGridViewTextBoxColumn10.HeaderText = "Nota1";
            this.dataGridViewTextBoxColumn10.Name = "dataGridViewTextBoxColumn10";
            // 
            // dataGridViewTextBoxColumn11
            // 
            this.dataGridViewTextBoxColumn11.DataPropertyName = "Nota2";
            this.dataGridViewTextBoxColumn11.HeaderText = "Nota2";
            this.dataGridViewTextBoxColumn11.Name = "dataGridViewTextBoxColumn11";
            // 
            // dataGridViewTextBoxColumn12
            // 
            this.dataGridViewTextBoxColumn12.DataPropertyName = "NotaFinal";
            this.dataGridViewTextBoxColumn12.HeaderText = "NotaFinal";
            this.dataGridViewTextBoxColumn12.Name = "dataGridViewTextBoxColumn12";
            // 
            // dataGridViewTextBoxColumn13
            // 
            this.dataGridViewTextBoxColumn13.DataPropertyName = "Conceito";
            this.dataGridViewTextBoxColumn13.HeaderText = "Conceito";
            this.dataGridViewTextBoxColumn13.Name = "dataGridViewTextBoxColumn13";
            // 
            // dataGridViewTextBoxColumn14
            // 
            this.dataGridViewTextBoxColumn14.DataPropertyName = "cur_sgl";
            this.dataGridViewTextBoxColumn14.HeaderText = "cur_sgl";
            this.dataGridViewTextBoxColumn14.Name = "dataGridViewTextBoxColumn14";
            // 
            // txtSexo
            // 
            this.txtSexo.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_alunoBindingSource, "Sexo", true));
            this.txtSexo.Enabled = false;
            this.txtSexo.Location = new System.Drawing.Point(188, 147);
            this.txtSexo.Name = "txtSexo";
            this.txtSexo.Size = new System.Drawing.Size(55, 20);
            this.txtSexo.TabIndex = 14;
            this.txtSexo.TextChanged += new System.EventHandler(this.txtSexo_TextChanged);
            // 
            // bindingNavigatorAddNewItem
            // 
            this.bindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorAddNewItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorAddNewItem.Image")));
            this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";
            this.bindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorAddNewItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorAddNewItem.Text = "Add new";
            // 
            // bindingNavigatorDeleteItem
            // 
            this.bindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorDeleteItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorDeleteItem.Image")));
            this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";
            this.bindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorDeleteItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorDeleteItem.Text = "Delete";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // tabela_alunoBindingNavigatorSaveItem
            // 
            this.tabela_alunoBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.tabela_alunoBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("tabela_alunoBindingNavigatorSaveItem.Image")));
            this.tabela_alunoBindingNavigatorSaveItem.Name = "tabela_alunoBindingNavigatorSaveItem";
            this.tabela_alunoBindingNavigatorSaveItem.Size = new System.Drawing.Size(23, 22);
            this.tabela_alunoBindingNavigatorSaveItem.Text = "Save Data";
            this.tabela_alunoBindingNavigatorSaveItem.Click += new System.EventHandler(this.tabela_alunoBindingNavigatorSaveItem_Click);
            // 
            // frmAlunos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(690, 423);
            this.Controls.Add(this.txtSexo);
            this.Controls.Add(this.tabela_alunoDataGridView);
            this.Controls.Add(this.tabela_alunoBindingNavigator);
            this.Controls.Add(this.grpEnd);
            this.Controls.Add(this.grpSexo);
            this.Controls.Add(this.txtCurso);
            this.Controls.Add(this.txtIngresso);
            this.Controls.Add(this.txtNome);
            this.Controls.Add(this.txtDatanasc);
            this.Controls.Add(this.txtMatricula);
            this.Controls.Add(this.lblCurso);
            this.Controls.Add(this.lblingresso);
            this.Controls.Add(this.lblDataNasc);
            this.Controls.Add(this.lblNome);
            this.Controls.Add(this.lblMatricula);
            this.Name = "frmAlunos";
            this.Text = "Alunos";
            this.Load += new System.EventHandler(this.frmAlunos_Load);
            this.grpSexo.ResumeLayout(false);
            this.grpSexo.PerformLayout();
            this.grpEnd.ResumeLayout(false);
            this.grpEnd.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.alunosDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tabela_alunoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tabela_alunoBindingNavigator)).EndInit();
            this.tabela_alunoBindingNavigator.ResumeLayout(false);
            this.tabela_alunoBindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tabela_alunoDataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblMatricula;
        private System.Windows.Forms.Label lblNome;
        private System.Windows.Forms.Label lblDataNasc;
        private System.Windows.Forms.Label lblingresso;
        private System.Windows.Forms.Label lblCurso;
        private System.Windows.Forms.TextBox txtMatricula;
        private System.Windows.Forms.TextBox txtDatanasc;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.TextBox txtIngresso;
        private System.Windows.Forms.TextBox txtCurso;
        private System.Windows.Forms.GroupBox grpSexo;
        private System.Windows.Forms.RadioButton rdbMasc;
        private System.Windows.Forms.RadioButton rdbFem;
        private System.Windows.Forms.GroupBox grpEnd;
        private System.Windows.Forms.Label lblBairro;
        private System.Windows.Forms.Label lblComp;
        private System.Windows.Forms.Label lblEnd;
        private System.Windows.Forms.Label lblCEP;
        private System.Windows.Forms.ComboBox cboEstado;
        private System.Windows.Forms.TextBox txtNro;
        private System.Windows.Forms.TextBox txtMun;
        private System.Windows.Forms.TextBox txtBairro;
        private System.Windows.Forms.TextBox txtComp;
        private System.Windows.Forms.TextBox txtEnd;
        private System.Windows.Forms.TextBox txtLog;
        private System.Windows.Forms.TextBox txtCEP;
        private System.Windows.Forms.Label lblEstado;
        private System.Windows.Forms.Label lblNro;
        private System.Windows.Forms.Label lblLog;
        private System.Windows.Forms.Label lblMun;
        private AlunosDataSet alunosDataSet;
        private System.Windows.Forms.BindingSource tabela_alunoBindingSource;
        private AlunosDataSetTableAdapters.Tabela_alunoTableAdapter tabela_alunoTableAdapter;
        private AlunosDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator tabela_alunoBindingNavigator;
        private System.Windows.Forms.ToolStripButton bindingNavigatorAddNewItem;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorDeleteItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton tabela_alunoBindingNavigatorSaveItem;
        private System.Windows.Forms.DataGridView tabela_alunoDataGridView;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn8;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn9;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn10;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn11;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn12;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn13;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn14;
        private System.Windows.Forms.TextBox txtSexo;
    }
}