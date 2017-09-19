namespace wfaSCA
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
            System.Windows.Forms.Label cur_CodLabel;
            System.Windows.Forms.Label cur_NomLabel;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmCursos));
            this.scaDataSet = new wfaSCA.scaDataSet();
            this.cursoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.cursoTableAdapter = new wfaSCA.scaDataSetTableAdapters.CursoTableAdapter();
            this.tableAdapterManager = new wfaSCA.scaDataSetTableAdapters.TableAdapterManager();
            this.cursoBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
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
            this.cursoBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.cur_CodTextBox = new System.Windows.Forms.TextBox();
            this.cur_NomTextBox = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.curCodDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.curNomDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fillByNomeCursoToolStrip = new System.Windows.Forms.ToolStrip();
            this.cur_NomToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.cur_NomToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.fillByNomeCursoToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.epCursos = new System.Windows.Forms.ErrorProvider(this.components);
            cur_CodLabel = new System.Windows.Forms.Label();
            cur_NomLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cursoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cursoBindingNavigator)).BeginInit();
            this.cursoBindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.fillByNomeCursoToolStrip.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.epCursos)).BeginInit();
            this.SuspendLayout();
            // 
            // cur_CodLabel
            // 
            cur_CodLabel.AutoSize = true;
            cur_CodLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            cur_CodLabel.Location = new System.Drawing.Point(32, 73);
            cur_CodLabel.Name = "cur_CodLabel";
            cur_CodLabel.Size = new System.Drawing.Size(60, 18);
            cur_CodLabel.TabIndex = 1;
            cur_CodLabel.Text = "Código:";
            // 
            // cur_NomLabel
            // 
            cur_NomLabel.AutoSize = true;
            cur_NomLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            cur_NomLabel.Location = new System.Drawing.Point(32, 99);
            cur_NomLabel.Name = "cur_NomLabel";
            cur_NomLabel.Size = new System.Drawing.Size(53, 18);
            cur_NomLabel.TabIndex = 3;
            cur_NomLabel.Text = "Nome:";
            // 
            // scaDataSet
            // 
            this.scaDataSet.DataSetName = "scaDataSet";
            this.scaDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // cursoBindingSource
            // 
            this.cursoBindingSource.DataMember = "Curso";
            this.cursoBindingSource.DataSource = this.scaDataSet;
            // 
            // cursoTableAdapter
            // 
            this.cursoTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.AlunoTableAdapter = null;
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.CursoTableAdapter = this.cursoTableAdapter;
            this.tableAdapterManager.DepartamentoTableAdapter = null;
            this.tableAdapterManager.DisciplinaTableAdapter = null;
            this.tableAdapterManager.EstadoTableAdapter = null;
            this.tableAdapterManager.MatriculaTableAdapter = null;
            this.tableAdapterManager.UpdateOrder = wfaSCA.scaDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // cursoBindingNavigator
            // 
            this.cursoBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.cursoBindingNavigator.BindingSource = this.cursoBindingSource;
            this.cursoBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.cursoBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.cursoBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
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
            this.cursoBindingNavigatorSaveItem});
            this.cursoBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.cursoBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.cursoBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.cursoBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.cursoBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.cursoBindingNavigator.Name = "cursoBindingNavigator";
            this.cursoBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.cursoBindingNavigator.Size = new System.Drawing.Size(482, 25);
            this.cursoBindingNavigator.TabIndex = 0;
            this.cursoBindingNavigator.Text = "bindingNavigator1";
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
            // cursoBindingNavigatorSaveItem
            // 
            this.cursoBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cursoBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("cursoBindingNavigatorSaveItem.Image")));
            this.cursoBindingNavigatorSaveItem.Name = "cursoBindingNavigatorSaveItem";
            this.cursoBindingNavigatorSaveItem.Size = new System.Drawing.Size(23, 22);
            this.cursoBindingNavigatorSaveItem.Text = "Save Data";
            this.cursoBindingNavigatorSaveItem.Click += new System.EventHandler(this.cursoBindingNavigatorSaveItem_Click);
            // 
            // cur_CodTextBox
            // 
            this.cur_CodTextBox.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.cur_CodTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.cursoBindingSource, "Cur_Cod", true));
            this.cur_CodTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cur_CodTextBox.Location = new System.Drawing.Point(96, 70);
            this.cur_CodTextBox.Name = "cur_CodTextBox";
            this.cur_CodTextBox.Size = new System.Drawing.Size(100, 24);
            this.cur_CodTextBox.TabIndex = 2;
            this.cur_CodTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.cur_CodTextBox_Validating);
            // 
            // cur_NomTextBox
            // 
            this.cur_NomTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.cursoBindingSource, "Cur_Nom", true));
            this.cur_NomTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cur_NomTextBox.Location = new System.Drawing.Point(96, 96);
            this.cur_NomTextBox.Name = "cur_NomTextBox";
            this.cur_NomTextBox.Size = new System.Drawing.Size(250, 24);
            this.cur_NomTextBox.TabIndex = 4;
            this.cur_NomTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.cur_NomTextBox_Validating);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.curCodDataGridViewTextBoxColumn,
            this.curNomDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.cursoBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(12, 142);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(450, 139);
            this.dataGridView1.TabIndex = 5;
            // 
            // curCodDataGridViewTextBoxColumn
            // 
            this.curCodDataGridViewTextBoxColumn.DataPropertyName = "Cur_Cod";
            this.curCodDataGridViewTextBoxColumn.HeaderText = "Código";
            this.curCodDataGridViewTextBoxColumn.Name = "curCodDataGridViewTextBoxColumn";
            // 
            // curNomDataGridViewTextBoxColumn
            // 
            this.curNomDataGridViewTextBoxColumn.DataPropertyName = "Cur_Nom";
            this.curNomDataGridViewTextBoxColumn.HeaderText = "Nome";
            this.curNomDataGridViewTextBoxColumn.Name = "curNomDataGridViewTextBoxColumn";
            // 
            // fillByNomeCursoToolStrip
            // 
            this.fillByNomeCursoToolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cur_NomToolStripLabel,
            this.cur_NomToolStripTextBox,
            this.fillByNomeCursoToolStripButton});
            this.fillByNomeCursoToolStrip.Location = new System.Drawing.Point(0, 25);
            this.fillByNomeCursoToolStrip.Name = "fillByNomeCursoToolStrip";
            this.fillByNomeCursoToolStrip.Size = new System.Drawing.Size(482, 25);
            this.fillByNomeCursoToolStrip.TabIndex = 6;
            this.fillByNomeCursoToolStrip.Text = "fillByNomeCursoToolStrip";
            // 
            // cur_NomToolStripLabel
            // 
            this.cur_NomToolStripLabel.Name = "cur_NomToolStripLabel";
            this.cur_NomToolStripLabel.Size = new System.Drawing.Size(94, 22);
            this.cur_NomToolStripLabel.Text = "Nome do Curso:";
            // 
            // cur_NomToolStripTextBox
            // 
            this.cur_NomToolStripTextBox.Name = "cur_NomToolStripTextBox";
            this.cur_NomToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // fillByNomeCursoToolStripButton
            // 
            this.fillByNomeCursoToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.fillByNomeCursoToolStripButton.Name = "fillByNomeCursoToolStripButton";
            this.fillByNomeCursoToolStripButton.Size = new System.Drawing.Size(61, 22);
            this.fillByNomeCursoToolStripButton.Text = "Pesquisar";
            this.fillByNomeCursoToolStripButton.Click += new System.EventHandler(this.fillByNomeCursoToolStripButton_Click);
            // 
            // epCursos
            // 
            this.epCursos.ContainerControl = this;
            // 
            // frmCursos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(482, 301);
            this.Controls.Add(this.fillByNomeCursoToolStrip);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(cur_CodLabel);
            this.Controls.Add(this.cur_CodTextBox);
            this.Controls.Add(cur_NomLabel);
            this.Controls.Add(this.cur_NomTextBox);
            this.Controls.Add(this.cursoBindingNavigator);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmCursos";
            this.Text = "CURSOS";
            this.Load += new System.EventHandler(this.frmCursos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cursoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cursoBindingNavigator)).EndInit();
            this.cursoBindingNavigator.ResumeLayout(false);
            this.cursoBindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.fillByNomeCursoToolStrip.ResumeLayout(false);
            this.fillByNomeCursoToolStrip.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.epCursos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private scaDataSet scaDataSet;
        private System.Windows.Forms.BindingSource cursoBindingSource;
        private scaDataSetTableAdapters.CursoTableAdapter cursoTableAdapter;
        private scaDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator cursoBindingNavigator;
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
        private System.Windows.Forms.ToolStripButton cursoBindingNavigatorSaveItem;
        private System.Windows.Forms.TextBox cur_CodTextBox;
        private System.Windows.Forms.TextBox cur_NomTextBox;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn curCodDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn curNomDataGridViewTextBoxColumn;
        private System.Windows.Forms.ToolStrip fillByNomeCursoToolStrip;
        private System.Windows.Forms.ToolStripLabel cur_NomToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox cur_NomToolStripTextBox;
        private System.Windows.Forms.ToolStripButton fillByNomeCursoToolStripButton;
        private System.Windows.Forms.ErrorProvider epCursos;
    }
}