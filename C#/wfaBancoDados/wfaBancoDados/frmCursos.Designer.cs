namespace wfaBancoDados
{
    partial class frmCursos
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
            System.Windows.Forms.Label cur_sglLabel;
            System.Windows.Forms.Label cur_nomLabel;
            System.Windows.Forms.Label cur_sep_sglLabel;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmCursos));
            this.tabela_cursosBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.tabela_cursosBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.cur_sglTextBox = new System.Windows.Forms.TextBox();
            this.cur_nomTextBox = new System.Windows.Forms.TextBox();
            this.cur_sep_sglTextBox = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.epCurso = new System.Windows.Forms.ErrorProvider(this.components);
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.fillByCursoNomeToolStrip = new System.Windows.Forms.ToolStrip();
            this.cur_nomToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.cur_nomToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.fillByCursoNomeToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.cursglDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.curnomDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cursepsglDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tabela_cursosBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.alunosDataSet = new wfaBancoDados.AlunosDataSet();
            this.tabela_cursosTableAdapter = new wfaBancoDados.AlunosDataSetTableAdapters.Tabela_cursosTableAdapter();
            this.tableAdapterManager = new wfaBancoDados.AlunosDataSetTableAdapters.TableAdapterManager();
            cur_sglLabel = new System.Windows.Forms.Label();
            cur_nomLabel = new System.Windows.Forms.Label();
            cur_sep_sglLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.tabela_cursosBindingNavigator)).BeginInit();
            this.tabela_cursosBindingNavigator.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.epCurso)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.fillByCursoNomeToolStrip.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tabela_cursosBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alunosDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // cur_sglLabel
            // 
            cur_sglLabel.AutoSize = true;
            cur_sglLabel.ForeColor = System.Drawing.SystemColors.HotTrack;
            cur_sglLabel.Location = new System.Drawing.Point(10, 17);
            cur_sglLabel.Name = "cur_sglLabel";
            cur_sglLabel.Size = new System.Drawing.Size(33, 13);
            cur_sglLabel.TabIndex = 1;
            cur_sglLabel.Text = "Sigla:";
            // 
            // cur_nomLabel
            // 
            cur_nomLabel.AutoSize = true;
            cur_nomLabel.ForeColor = System.Drawing.SystemColors.HotTrack;
            cur_nomLabel.Location = new System.Drawing.Point(10, 43);
            cur_nomLabel.Name = "cur_nomLabel";
            cur_nomLabel.Size = new System.Drawing.Size(38, 13);
            cur_nomLabel.TabIndex = 3;
            cur_nomLabel.Text = "Nome:";
            // 
            // cur_sep_sglLabel
            // 
            cur_sep_sglLabel.AutoSize = true;
            cur_sep_sglLabel.ForeColor = System.Drawing.SystemColors.HotTrack;
            cur_sep_sglLabel.Location = new System.Drawing.Point(10, 69);
            cur_sep_sglLabel.Name = "cur_sep_sglLabel";
            cur_sep_sglLabel.Size = new System.Drawing.Size(77, 13);
            cur_sep_sglLabel.TabIndex = 5;
            cur_sep_sglLabel.Text = "Departamento:";
            // 
            // tabela_cursosBindingNavigator
            // 
            this.tabela_cursosBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.tabela_cursosBindingNavigator.BindingSource = this.tabela_cursosBindingSource;
            this.tabela_cursosBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.tabela_cursosBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.tabela_cursosBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
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
            this.tabela_cursosBindingNavigatorSaveItem});
            this.tabela_cursosBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.tabela_cursosBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.tabela_cursosBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.tabela_cursosBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.tabela_cursosBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.tabela_cursosBindingNavigator.Name = "tabela_cursosBindingNavigator";
            this.tabela_cursosBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.tabela_cursosBindingNavigator.Size = new System.Drawing.Size(418, 25);
            this.tabela_cursosBindingNavigator.TabIndex = 0;
            this.tabela_cursosBindingNavigator.Text = "bindingNavigator1";
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
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
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
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator1";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
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
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator2";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // tabela_cursosBindingNavigatorSaveItem
            // 
            this.tabela_cursosBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.tabela_cursosBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("tabela_cursosBindingNavigatorSaveItem.Image")));
            this.tabela_cursosBindingNavigatorSaveItem.Name = "tabela_cursosBindingNavigatorSaveItem";
            this.tabela_cursosBindingNavigatorSaveItem.Size = new System.Drawing.Size(23, 22);
            this.tabela_cursosBindingNavigatorSaveItem.Text = "Save Data";
            this.tabela_cursosBindingNavigatorSaveItem.Click += new System.EventHandler(this.tabela_cursosBindingNavigatorSaveItem_Click);
            // 
            // cur_sglTextBox
            // 
            this.cur_sglTextBox.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.cur_sglTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_cursosBindingSource, "cur_sgl", true));
            this.cur_sglTextBox.Location = new System.Drawing.Point(94, 14);
            this.cur_sglTextBox.MaxLength = 10;
            this.cur_sglTextBox.Name = "cur_sglTextBox";
            this.cur_sglTextBox.Size = new System.Drawing.Size(100, 20);
            this.cur_sglTextBox.TabIndex = 2;
            this.cur_sglTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.cur_sglTextBox_Validating);
            // 
            // cur_nomTextBox
            // 
            this.cur_nomTextBox.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.cur_nomTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_cursosBindingSource, "cur_nom", true));
            this.cur_nomTextBox.Location = new System.Drawing.Point(94, 40);
            this.cur_nomTextBox.MaxLength = 70;
            this.cur_nomTextBox.Name = "cur_nomTextBox";
            this.cur_nomTextBox.Size = new System.Drawing.Size(236, 20);
            this.cur_nomTextBox.TabIndex = 4;
            this.cur_nomTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.cur_nomTextBox_Validating);
            // 
            // cur_sep_sglTextBox
            // 
            this.cur_sep_sglTextBox.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.cur_sep_sglTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.tabela_cursosBindingSource, "cur_sep_sgl", true));
            this.cur_sep_sglTextBox.Location = new System.Drawing.Point(94, 66);
            this.cur_sep_sglTextBox.MaxLength = 10;
            this.cur_sep_sglTextBox.Name = "cur_sep_sglTextBox";
            this.cur_sep_sglTextBox.Size = new System.Drawing.Size(100, 20);
            this.cur_sep_sglTextBox.TabIndex = 6;
            this.cur_sep_sglTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.cur_sep_sglTextBox_Validating);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.cur_sglTextBox);
            this.panel1.Controls.Add(cur_sglLabel);
            this.panel1.Controls.Add(this.cur_sep_sglTextBox);
            this.panel1.Controls.Add(cur_sep_sglLabel);
            this.panel1.Controls.Add(cur_nomLabel);
            this.panel1.Controls.Add(this.cur_nomTextBox);
            this.panel1.Location = new System.Drawing.Point(12, 83);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(389, 100);
            this.panel1.TabIndex = 7;
            // 
            // epCurso
            // 
            this.epCurso.ContainerControl = this;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cursglDataGridViewTextBoxColumn,
            this.curnomDataGridViewTextBoxColumn,
            this.cursepsglDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.tabela_cursosBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(13, 209);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(388, 150);
            this.dataGridView1.TabIndex = 8;
            // 
            // fillByCursoNomeToolStrip
            // 
            this.fillByCursoNomeToolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cur_nomToolStripLabel,
            this.cur_nomToolStripTextBox,
            this.fillByCursoNomeToolStripButton});
            this.fillByCursoNomeToolStrip.Location = new System.Drawing.Point(0, 25);
            this.fillByCursoNomeToolStrip.Name = "fillByCursoNomeToolStrip";
            this.fillByCursoNomeToolStrip.Size = new System.Drawing.Size(418, 25);
            this.fillByCursoNomeToolStrip.TabIndex = 9;
            this.fillByCursoNomeToolStrip.Text = "fillByCursoNomeToolStrip";
            // 
            // cur_nomToolStripLabel
            // 
            this.cur_nomToolStripLabel.Name = "cur_nomToolStripLabel";
            this.cur_nomToolStripLabel.Size = new System.Drawing.Size(94, 22);
            this.cur_nomToolStripLabel.Text = "Nome do Curso:";
            // 
            // cur_nomToolStripTextBox
            // 
            this.cur_nomToolStripTextBox.Name = "cur_nomToolStripTextBox";
            this.cur_nomToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // fillByCursoNomeToolStripButton
            // 
            this.fillByCursoNomeToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.fillByCursoNomeToolStripButton.Name = "fillByCursoNomeToolStripButton";
            this.fillByCursoNomeToolStripButton.Size = new System.Drawing.Size(61, 22);
            this.fillByCursoNomeToolStripButton.Text = "Pesquisar";
            this.fillByCursoNomeToolStripButton.Click += new System.EventHandler(this.fillByCursoNomeToolStripButton_Click);
            // 
            // cursglDataGridViewTextBoxColumn
            // 
            this.cursglDataGridViewTextBoxColumn.DataPropertyName = "cur_sgl";
            this.cursglDataGridViewTextBoxColumn.HeaderText = "Sigla";
            this.cursglDataGridViewTextBoxColumn.MaxInputLength = 10;
            this.cursglDataGridViewTextBoxColumn.Name = "cursglDataGridViewTextBoxColumn";
            // 
            // curnomDataGridViewTextBoxColumn
            // 
            this.curnomDataGridViewTextBoxColumn.DataPropertyName = "cur_nom";
            this.curnomDataGridViewTextBoxColumn.HeaderText = "Nome";
            this.curnomDataGridViewTextBoxColumn.MaxInputLength = 70;
            this.curnomDataGridViewTextBoxColumn.Name = "curnomDataGridViewTextBoxColumn";
            // 
            // cursepsglDataGridViewTextBoxColumn
            // 
            this.cursepsglDataGridViewTextBoxColumn.DataPropertyName = "cur_sep_sgl";
            this.cursepsglDataGridViewTextBoxColumn.HeaderText = "Depto";
            this.cursepsglDataGridViewTextBoxColumn.MaxInputLength = 10;
            this.cursepsglDataGridViewTextBoxColumn.Name = "cursepsglDataGridViewTextBoxColumn";
            // 
            // tabela_cursosBindingSource
            // 
            this.tabela_cursosBindingSource.DataMember = "Tabela cursos";
            this.tabela_cursosBindingSource.DataSource = this.alunosDataSet;
            // 
            // alunosDataSet
            // 
            this.alunosDataSet.DataSetName = "AlunosDataSet";
            this.alunosDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tabela_cursosTableAdapter
            // 
            this.tabela_cursosTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.Tabela_alunoTableAdapter = null;
            this.tableAdapterManager.Tabela_cursosTableAdapter = this.tabela_cursosTableAdapter;
            this.tableAdapterManager.UpdateOrder = wfaBancoDados.AlunosDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // frmCursos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(418, 373);
            this.Controls.Add(this.fillByCursoNomeToolStrip);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.tabela_cursosBindingNavigator);
            this.Name = "frmCursos";
            this.Text = "frmCursos";
            this.Load += new System.EventHandler(this.frmCursos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.tabela_cursosBindingNavigator)).EndInit();
            this.tabela_cursosBindingNavigator.ResumeLayout(false);
            this.tabela_cursosBindingNavigator.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.epCurso)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.fillByCursoNomeToolStrip.ResumeLayout(false);
            this.fillByCursoNomeToolStrip.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tabela_cursosBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alunosDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private AlunosDataSet alunosDataSet;
        private System.Windows.Forms.BindingSource tabela_cursosBindingSource;
        private AlunosDataSetTableAdapters.Tabela_cursosTableAdapter tabela_cursosTableAdapter;
        private AlunosDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator tabela_cursosBindingNavigator;
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
        private System.Windows.Forms.ToolStripButton tabela_cursosBindingNavigatorSaveItem;
        private System.Windows.Forms.TextBox cur_sglTextBox;
        private System.Windows.Forms.TextBox cur_nomTextBox;
        private System.Windows.Forms.TextBox cur_sep_sglTextBox;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ErrorProvider epCurso;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn cursglDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn curnomDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cursepsglDataGridViewTextBoxColumn;
        private System.Windows.Forms.ToolStrip fillByCursoNomeToolStrip;
        private System.Windows.Forms.ToolStripLabel cur_nomToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox cur_nomToolStripTextBox;
        private System.Windows.Forms.ToolStripButton fillByCursoNomeToolStripButton;
    }
}